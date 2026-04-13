function Object_Detection(Image)
persistent figHandle net classNames inputSize axHandle;

if isempty(net)
    if exist('importNetworkFromONNX','file')
        net = importNetworkFromONNX('models/best.onnx');
    else
        net = importONNXNetwork('models/best.onnx', 'OutputLayerType','regression');
    end

    classNames = ["Blue-Bottle", "Blue-Can",    "Blue-Cube",    "Green-Caa",    ...
                  "Green-Can",   "Green-Cube",  "Purple-Cube",  "Red-Bottle",   ...
                  "Red-Can",     "Red-Cube",    "Spam",         "Yellow-Bottle",...
                  "Yellow-Can",  "marker"];

    inputSize = [640, 640];
end

if isempty(figHandle) || ~ishandle(figHandle)
    figHandle = figure('Name', 'Object Detection', 'NumberTitle', 'off');
    axHandle  = axes('Parent', figHandle);
end

origH = size(Image, 1);
origW = size(Image, 2);

imgResized = imresize(Image, inputSize);
imgFloat   = single(imgResized) / 255.0;
imgBatch   = reshape(imgFloat, [inputSize(1), inputSize(2), 3, 1]);

rawOutput = predict(net, imgBatch);    

% we already have non max supression no need to apply it 
detections = squeeze(rawOutput);      

% x1s   = detections(:, 1);
% y1s   = detections(:, 2);
% x2s   = detections(:, 3);
% y2s   = detections(:, 4);
% confs = detections(:, 5);
% clsID = detections(:, 6);     

x1s   = detections(:, 1);
y1s   = detections(:, 2);
x2s   = detections(:, 3);
y2s   = detections(:, 4);
confs = detections(:, 5);
clsID = detections(:, 6);        

confThreshold = 0.5;
keep = confs >= confThreshold;

if ~any(keep)
    annotated = Image;
    figure(figHandle);
    imshow(annotated);
    title('Detections: 0');
    drawnow;
    return;
end

x1s   = x1s(keep);    
x2s  = x2s(keep);
y1s   = y1s(keep);    
y2s  = y2s(keep);
confs = confs(keep);   
clsID = clsID(keep);


scaleX = origW / inputSize(2);
scaleY = origH / inputSize(1);

y1s = y1s * scaleY;    
x1s = x1s * scaleX;    
x2s = x2s * scaleX;
y2s = y2s * scaleY;


bw = x2s - x1s;
bh = y2s - y1s;
boxes = [x1s, y1s, bw, bh];


classIdx = clsID + 1;
classIdx = min(max(round(classIdx), 1), numel(classNames));

labelStrs = strings(numel(classIdx), 1);
for i = 1:numel(classIdx)
    labelStrs(i) = sprintf('%s %.0f%%', classNames(classIdx(i)), confs(i)*100);
end

annotated = insertObjectAnnotation(Image, 'rectangle', boxes, labelStrs, ...
    'Color', 'yellow', 'TextBoxOpacity', 0.7, 'FontSize', 12);
    
imshow(annotated, 'Parent', axHandle)
%figure(figHandle);
%imshow(annotated);
title(sprintf('Detections: %d ', sum(keep)));
drawnow;
