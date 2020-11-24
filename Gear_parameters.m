clear all; clc ; close all;

%% Simulation Parameters
Tsamp=50e-6;
fsw=1/Tsamp*0.5;

%% Motor Parameters
Jm   = 0.00005;   % Rotor inertia                         [Kg*m^2]

%% Gear Parameters
gear_ratio1 = 4.5;
gear_ratio2 = 4.5;
gear_ratio3 = 4.5;
gear_ratio4 = 3.1;

%2차년도
% gear_inertia1 = 8.8167157/1000000;
% gear_inertia2 = 17.328427/1000000;
% gear_inertai3 = 30.642496/1000000;
% gear_inertia4 = 66.112737/1000000;

%3차년도
gear_inertia1 = 1.097/1000000;
gear_inertia2 = 2.047/1000000;
gear_inertai3 = 3.065/1000000;
gear_inertia4 = 8.972/1000000;

%raw parameters
% backlash1_bound = 0.3157*1;
% backlash2_bound = 0.3157*1;
% backlash3_bound = 0.2966*1;
% backlash4_bound = 0.3157*1;
% 
% backlash1_stiffness = 63*1e+6*1;
% backlash2_stiffness = 135*1e+6*1;
% backlash3_stiffness = 240*1e+6*1;
% backlash4_stiffness = 300*1e+6*1;
% 
% backlash1_damping = 300*1;
% backlash2_damping = 300*1;
% backlash3_damping = 300*1;
% backlash4_damping = 300*1;

%tuned prameters
backlash1_bound = 0.3157*0.1;
backlash2_bound = 0.3157*0.1;
backlash3_bound = 0.2966*0.1;
backlash4_bound = 0.3157*0.1;

backlash1_stiffness = 63*1e+6*0.00000001;
backlash2_stiffness = 135*1e+6*0.00000001;
backlash3_stiffness = 240*1e+6*0.00000001;
backlash4_stiffness = 300*1e+6*0.00000001;

backlash1_damping = 300*0.000007;
backlash2_damping = 300*0.000007;
backlash3_damping = 300*0.000007;
backlash4_damping = 300*0.000007;

%% ouput torque load
T_load = 4.5*4.5*4.5*3.1*0.22;
w_load = 4000/4.5/4.5/4.5/3.1;
