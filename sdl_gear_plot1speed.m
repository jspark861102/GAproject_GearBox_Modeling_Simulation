% Code to plot simulation results from sdl_gear
%% Plot Description:
%
% The plots below show the speeds and torques applied to two shafts
% connected by a gearbox. 

% Copyright 2016 The MathWorks, Inc.

% Generate simulation results if they don't exist
if ~exist('simlog_sdl_gear', 'var')
    sim('sdl_gear')
end

% Reuse figure if it exists, else create new figure
if ~exist('h1_sdl_gear', 'var') || ...
        ~isgraphics(h1_sdl_gear, 'figure')
    h1_sdl_gear = figure('Name', 'sdl_gear');
end
figure(h1_sdl_gear)
clf(h1_sdl_gear)

% Get simulation results
simlog_t = simlog_sdl_gear.Inertia1.w.series.time;
simlog_wInertia1 = simlog_sdl_gear.Inertia1.w.series.values('rad/s');
simlog_wInertia2 = simlog_sdl_gear.Inertia2.w.series.values('rad/s');
simlog_tGearBase = simlog_sdl_gear.Gear.tB.series.values('N*m');
simlog_tGearFollower = simlog_sdl_gear.Gear.tF.series.values('N*m');

% Plot results
simlog_handles(1) = subplot(2, 1, 1);
plot(simlog_t, simlog_wInertia1, 'LineWidth', 1)
hold on
plot(simlog_t, simlog_wInertia2, 'LineWidth', 1)
hold off
grid on
title('Shaft Speed')
ylabel('Speed (rad/s)')
legend({'Inertia1','Inertia2'},'Location','Best');

simlog_handles(2) = subplot(2, 1, 2);
plot(simlog_t, simlog_tGearBase, 'LineWidth', 1)
hold on
plot(simlog_t, -simlog_tGearFollower, 'LineWidth', 1)
grid on
title('Shaft Torque')
ylabel('Torque (N*m)')
xlabel('Time (s)')
legend({'Inertia1','Inertia2'},'Location','Best');

linkaxes(simlog_handles, 'x')

% Remove temporary variables
clear simlog_t simlog_handles
clear simlog_tGearBase simlog_tGearFollower
clear simlog_wInertia1 simlog_wInertia2
