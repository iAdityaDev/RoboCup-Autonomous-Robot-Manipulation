function bboxList  = bbox_Binsegregation(detections_out, n)


    bboxList = zeros(n, 7);

    for i = 1:n

        % fprintf('Object: %s | Conf: %.1f%% | BBox: [%.1f, %.1f, %.1f, %.1f]\n', ...
        %     detections_out(i).className, detections_out(i).confidence * 100, ...
        %     detections_out(i).bbox.x1, detections_out(i).bbox.y1, ...
        %     detections_out(i).bbox.x2, detections_out(i).bbox.y2);



        fprintf('Object %d: %s\n', i, detections_out(i).className);
        binVal = get_bin_value(detections_out(i).className);
        bboxList(i, :) = [detections_out(i).bbox.x1,    ...
                          detections_out(i).bbox.y1,    ...
                          detections_out(i).bbox.x2,    ...
                          detections_out(i).bbox.y2,    ...
                          detections_out(i).bbox.width, ...
                          detections_out(i).bbox.height,...
                          binVal];
    end
end

function binVal = get_bin_value(className)
    blueBinClasses  = ["Blue-Bottle", "Blue-Cube",     "Red-Bottle",    ...
                       "Red-Cube",    "Yellow-Bottle",  "marker"];

    greenBinClasses = ["Blue-Can",    "Green-Caa",     "Green-Can",     ...
                       "Green-Cube",  "Purple-Cube",    "Red-Can",       ...
                       "Yellow-Can",  "Spam"];

    if any(strcmp(blueBinClasses, className))
        binVal = 1.0;    
    elseif any(strcmp(greenBinClasses, className))
        binVal = 0.0;    
    else
        binVal = -1.0;   
    end
end