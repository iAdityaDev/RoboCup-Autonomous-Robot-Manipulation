function [pickPoint,isValid] = Object_Pickup_Position(bbox, Depth, Camera_Tform)

pickPoint = [0, 0, 0];   % default value
isValid   = false;        % default value

fx = 615.0;   % focal length x
fy = 615.0;   % focal length y
cx = 320.0;   % principal point x
cy = 240.0;   % principal point y

u = bbox(1) + bbox(3)/2;  
v = bbox(2) + bbox(4)/2;

u = round(u);
v = round(v);


imgH = size(Depth, 1);
imgW = size(Depth, 2);

u = min(max(u, 3), imgW - 3);
v = min(max(v, 3), imgH - 3);

% ---- Step 3: Sample 5x5 depth patch (robust against noise) ----
depthPatch = Depth(v-2:v+2, u-2:u+2);
depthPatch = double(depthPatch);

% Remove invalid (zero) depth values
validDepth = depthPatch(depthPatch > 0);

if isempty(validDepth)
    pickPoint = [0, 0, 0];
    isValid   = false;
    return;
end

% Average valid depth and convert mm to meters
Z = mean(validDepth) / 1000.0;

% % Reject if depth is out of reasonable range (5cm to 2m)
% if Z < 0.05 || Z > 2.0
%     pickPoint = [0, 0, 0];
%     isValid   = false;
%     return;
% end

% ---- Step 4: Back-project to 3D camera frame ----
X_cam = (u - cx) * Z / fx;
Y_cam = (v - cy) * Z / fy;
Z_cam = Z;

% ---- Step 5: Transform to robot frame using Camera_Tform ----
point_cam   = [X_cam; Y_cam; Z_cam; 1];
point_robot = Camera_Tform * point_cam;

pickPoint = point_robot(1:3)';   % [X, Y, Z] in meters
isValid   = true;

end