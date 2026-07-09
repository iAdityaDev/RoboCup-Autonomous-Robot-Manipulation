<div align="center">
<h1>RoboCup ARM Challenge</h1>
<h3>UR5e Autonomous Pick and Place — MATLAB / Simulink</h3>

![MATLAB](https://img.shields.io/badge/MATLAB-R2025b%2B-orange?logo=mathworks&logoColor=white)
![Simulink](https://img.shields.io/badge/Simulink-Simulation%203D-blue?logo=mathworks&logoColor=white)
![Toolbox](https://img.shields.io/badge/Robotics%20System%20Toolbox-required-red)
![Status](https://img.shields.io/badge/status-active-brightgreen)

Autonomous pick-and-place pipeline for a UR5e robot arm built for the **RoboCup ARM Challenge**. Runs fully inside MATLAB/Simulink — IK solved via `generalizedInverseKinematics`, smooth joint trajectories via `trapveltraj`, and a persistent state machine handling the full pick → grasp → place → release cycle.

</div>

<video src="https://github.com/user-attachments/assets/fb4c0638-75c5-493a-ae6f-d82336e50576" controls width="600"></video>
---

## Repository structure

```
RoboCup_ARM
├── RoboCup_ARM.slx           # Main Simulink model
└── models/
    └── best2.onnx            # YOLO Model for Detection
├── IK__MotionPlanning.m      # IK solver + trajectory generator
├── main.m                    # Main MATLAB Function block (state machine)
├── Object_Detection.m        # Detection pipeline
├── Object_Pickup_Position.m  # bbox + depth + camera transform to 3D point
└── modelData/
    └── ur5e_gripper.mat      # RigidBodyTree: UR5e + gripper (12 DOF)
```

## State machine

Runs inside `Generate Robot Config` every simulation timestep. All state and trajectory variables are `persistent`.

```
┌─────────┐     IK done      ┌─────────┐   end of traj   ┌─────────┐
│ State 0 │ ───────────────► │ State 1 │ ───────────────► │ State 2 │
│  Init   │                  │  Pick   │                  │  Grasp  │
│  + IK   │                  │  traj   │                  │  wait   │
└─────────┘                  └─────────┘                  └────┬────┘
                                                               │ targetGrasped
                                                               ▼
┌─────────┐   delay > 100   ┌─────────┐    gripper off   ┌─────────┐
│ State 5 │ ◄────────────── │ State 4 │ ◄─────────────── │ State 3 │
│  Stop   │                 │ Release │                  │  Place  │
│         │                 │         │                  │  traj   │
└─────────┘                 └─────────┘                  └─────────┘
```

