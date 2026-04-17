matData = load('modelData/ur5e_gripper.mat');
robot   = matData.robot;

endEffectorName = 'tool0';


pickPosition    = [0.4,  0.1, 0.15];
pickOrientation = [pi, 0, pi/2];    

placePosition    = [0.3, -0.3, 0.20];
placeOrientation = [pi, 0, pi/4];

q_home = [-0.2618, -2.1991, 1.9722, -1.3963, -1.5882, 1.3265]';

T_pick  = [eul2rotm(pickOrientation,  'XYZ'), pickPosition';  0 0 0 1];
T_place = [eul2rotm(placeOrientation, 'XYZ'), placePosition'; 0 0 0 1];

T_approach       = T_pick;
T_approach(3, 4) = T_approach(3, 4) + 0.15;

gik = generalizedInverseKinematics('RigidBodyTree', robot, ...
      'ConstraintInputs', {'pose', 'joint'});


poseConst                   = constraintPoseTarget(endEffectorName);
poseConst.OrientationTolerance = 0.05;  
poseConst.PositionTolerance    = 0.001;

jointConst = constraintJointBounds(robot);


    function q_sol = solveGIK(gik, poseConst, jointConst, T, q0)
        poseConst.TargetTransform = T;
        [q_sol, solInfo] = gik(q0, poseConst, jointConst);
        q_sol = q_sol(1:6)';
        if ~strcmp(solInfo.Status, 'success')
            warning('gIK did not fully converge: %s', solInfo.Status);
        end
    end

q_approach = solveGIK(gik, poseConst, jointConst, T_approach, q_home);
q_pick     = solveGIK(gik, poseConst, jointConst, T_pick,     q_approach');
q_place    = solveGIK(gik, poseConst, jointConst, T_place,    q_home);

fprintf('IK solved:\n  approach=[%.3f %.3f %.3f %.3f %.3f %.3f]\n', q_approach);
fprintf('  pick    =[%.3f %.3f %.3f %.3f %.3f %.3f]\n', q_pick);
fprintf('  place   =[%.3f %.3f %.3f %.3f %.3f %.3f]\n', q_place);


numSteps     = 100;           % time steps per segment
maxVelocity  = 1.0;           % rad/s max joint velocity
maxAccel     = 2.0;           % rad/s² max joint acceleration

pickWaypoints  = [q_home, q_approach', q_pick'];   % 6x3

[pickPos, pickVel, pickAccel, ~] = trapveltraj(pickWaypoints, ...
    numSteps * 2, ...               % total samples across all segments
    'PeakVelocity', maxVelocity, ...
    'Acceleration', maxAccel);

placeWaypoints  = [q_pick', q_approach', q_place'];

[placePos, placeVel, placeAccel, ~] = trapveltraj(placeWaypoints, ...
    numSteps * 2, ...
    'PeakVelocity', maxVelocity, ...
    'Acceleration', maxAccel);

pickTraj  = pickPos;    % already 6 x N from trapveltraj
placeTraj = placePos;

fprintf('\n=== Trajectory Sizes ===\n');
fprintf('  pickTraj  : %d joints x %d time steps\n', size(pickTraj));
fprintf('  placeTraj : %d joints x %d time steps\n', size(placeTraj));

figure('Name', 'Approach 2 — Trapezoidal Velocity Trajectories');

subplot(3,1,1);
plot(rad2deg(pickTraj'), 'LineWidth', 1.5);
title('Joint Positions — Pick Trajectory'); xlabel('Time step'); ylabel('Angle (deg)');
legend('J1','J2','J3','J4','J5','J6','Location','best'); grid on;

subplot(3,1,2);
plot(rad2deg(pickVel'), 'LineWidth', 1.5);
title('Joint Velocities — Pick Trajectory'); xlabel('Time step'); ylabel('Vel (deg/s)');
legend('J1','J2','J3','J4','J5','J6','Location','best'); grid on;

subplot(3,1,3);
plot(rad2deg(pickAccel'), 'LineWidth', 1.5);
title('Joint Accelerations — Pick Trajectory'); xlabel('Time step'); ylabel('Accel (deg/s²)');
legend('J1','J2','J3','J4','J5','J6','Location','best'); grid on;

sgtitle('Approach 2: trapveltraj Trajectories for UR5e');

T_achieved = getTransform(robot, pickTraj(:, end)', endEffectorName);
posError    = norm(T_achieved(1:3,4) - pickPosition');
fprintf('\nForward kinematics check:\n');
fprintf('  Desired  position: [%.4f, %.4f, %.4f]\n', pickPosition);
fprintf('  Achieved position: [%.4f, %.4f, %.4f]\n', T_achieved(1:3,4)');
fprintf('  Position error   : %.4f m\n', posError);

assignin('base', 'pickTraj',  pickTraj);
assignin('base', 'placeTraj', placeTraj);
