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
Z_cam = 0.5-Z;

point_cam   = [X_cam; Y_cam; Z_cam; 1];
point_robot = Camera_Tform * point_cam;

pickPoint = point_robot(1:3)';  
isValid   = true;

end