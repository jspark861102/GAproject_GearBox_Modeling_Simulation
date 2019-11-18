% Code to plot simulation results from sdl_gear_efficiency
%% Plot Description:
%
% The plot below shows load-dependent efficiency in a gear model. A gear is
% driven at a constant speed as the load torque is varied.  The efficiency
% at the nominal point exactly matches the parameter values in the block.

% Copyright 2016 The MathWorks, Inc.

% Generate simulation results if they don't exist
if ~exist('simlog_sdl_gear_efficiency', 'var')
    sim('sdl_gear_efficiency')
end

% Reuse figure if it exists, else create new figure
if ~exist('h1_sdl_gear_efficiency', 'var') || ...
        ~isgraphics(h1_sdl_gear_efficiency, 'figure')
    h1_sdl_gear_efficiency = figure('Name', 'sdl_gear_efficiency');
end
figure(h1_sdl_gear_efficiency)
clf(h1_sdl_gear_efficiency)

% Get simulation results
simlog_t = simlog_sdl_gear_efficiency.Torque_Source.t.series.time;
simlog_tLoad = simlog_sdl_gear_efficiency.Torque_Source.t.series.values('N*m');

temp_gEff = logsout_sdl_gear_efficiency.get('Gear_Efficiency');

% Plot results
yyaxis left
plot(simlog_t, simlog_tLoad, 'LineWidth', 1)
ylabel('Load Torque (N*m)')
yyaxis right
plot(temp_gEff.Values.Time, temp_gEff.Values.Data, 'LineWidth', 1)
grid on
ylabel('Gear Efficiency (0-1)')
title('Load Torque and Gear Efficiency')
xlabel('Time (s)')
legend({'Torque','Efficiency'},'Location','Best');

% Remove temporary variables
clear simlog_t simlog_tLoad temp_gEff
