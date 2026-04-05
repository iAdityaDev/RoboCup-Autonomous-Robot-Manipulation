function Object_Detection(Image)

persistent figHandle;

if isempty(figHandle)
    figHandle = figure('Name', 'Camera Feed', ...
                       'NumberTitle', 'off');
end

figure(figHandle);


imshow(Image);
title('Live RGB Camera Feed');
drawnow;