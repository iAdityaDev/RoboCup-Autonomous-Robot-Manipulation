function [pickPoint,isValid] = Object_Pickup_Position(bbox, Depth, Camera_Tform)

pickPoint = [0, 0, 0];  
isValid   = false;      

fx = 615.0; 
fy = 615.0; 
cx = 320.0;  
cy = 240.0; 

u = bbox(1) + bbox(3)/2;  
v = bbox(2) + bbox(4)/2;

u = round(u);
v = round(v);


imgH = size(Depth, 1);
imgW = size(Depth, 2);

u = min(max(u, 3), imgW - 3);
v = min(max(v, 3), imgH - 3);

depthPatch = Depth(v-2:v+2, u-2:u+2);
depthPatch = double(depthPatch);

validDepth = depthPatch(depthPatch > 0);

if isempty(validDepth)
    pickPoint = [0, 0, 0];
    isValid   = false;
    return;
end

Z = mean(validDepth) / 1000.0;

% % predifing the depth range 
% if Z < 0.05 || Z > 2.0
%     pickPoint = [0, 0, 0];
%     isValid   = false;
%     return;
% end

X_cam = (u - cx) * Z / fx;
Y_cam = (v - cy) * Z / fy;
Z_cam = Z;

point_cam   = [X_cam; Y_cam; Z_cam; 1];
point_robot = Camera_Tform * point_cam;

pickPoint = point_robot(1:3)';  
isValid   = true;






% ---- Visualization Block ----
% Normalize depth image to 0-255 for display
depthDisplay = double(Depth);
depthDisplay = depthDisplay / max(depthDisplay(:));   % normalize to 0-1

% Open figure window (persistent - won't flicker on repeated calls)
figure(99);
imshow(depthDisplay);                                 % show depth image as grayscale
colormap(gca, jet);                                   % apply color map so depth is visible
title('Object Detection - Depth View');
hold on;

% Draw bounding box rectangle
rectangle('Position', bbox, ...
          'EdgeColor', 'g', ...
          'LineWidth', 2);

% Mark the object center with crosshair
plot(u, v, 'r+', 'MarkerSize', 20, 'LineWidth', 2);  % red cross at center
plot(u, v, 'ro', 'MarkerSize', 10, 'LineWidth', 2);  % red circle at center

% Add text label showing 3D position
labelText = sprintf('X:%.3f Y:%.3f Z:%.3f m', pickPoint(1), pickPoint(2), pickPoint(3));
text(u + 10, v, labelText, ...
     'Color',    'yellow', ...
     'FontSize',  10, ...
     'FontWeight','bold');

% Add depth value label
depthText = sprintf('Depth: %.3f m', Z);
text(u + 10, v + 20, depthText, ...
     'Color',    'cyan', ...
     'FontSize',  10, ...
     'FontWeight','bold');

hold off;
drawnow;                                              % force immediate render
% ---- End Visualization Block ----











end