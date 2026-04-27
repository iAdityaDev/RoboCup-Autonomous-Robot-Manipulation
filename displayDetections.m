function displayDetections(detections_out)
if ~isempty(detections_out) && isstruct(detections_out)
    for i = 1:length(detections_out)
        disp(['Detection ' num2str(i) ':']);
        disp(['  Class     : ' detections_out(i).className]);
        disp(['  BBox      : ' num2str(detections_out(i).bbox)]);
        disp(['  Confidence: ' num2str(detections_out(i).confidence)]);
    end
end