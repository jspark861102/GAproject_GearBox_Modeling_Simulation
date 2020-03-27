close all

% simlog_t = simlog_sdl_gear_backlash.Base.w.series.time;
% simlog_wbase = simlog_sdl_gear_backlash.Base.w.series.values;
% simlog_wfirst = simlog_sdl_gear_backlash.First_gear.w.series.values;
% simlog_wsecond = simlog_sdl_gear_backlash.Second_gear.w.series.values;
% simlog_wthird = simlog_sdl_gear_backlash.Third_gear.w.series.values;
% simlog_wfourth = simlog_sdl_gear_backlash.Fourth_gear.w.series.values;
% % simlog_xBacklash = simlog_sdl_gear_backlash.Backlash.phi.series.values;


figure;
plot(A.Time, A.Data(:,2:end), 'LineWidth', 1)
ylabel('Angle (rad)')
legend('Base','First','Second','Third','Four')
grid on
title('position')
xlabel('Time (s)')
xlim([0 0.3])

figure;
plot(W.Time, W.Data(:,2:end), 'LineWidth', 1)
ylabel('velocity (rad/sec)')
legend('Base','First','Second','Third','Four')
grid on
title('velocity')
xlabel('Time (s)')
xlim([0 0.3])
ylim([-200 200])

figure;
plot(T.Time, T.Data(:,2:end), 'LineWidth', 1)
ylabel('torque (Nm)')
legend('Base','First','Second','Third','Four')
grid on
title('torque')
xlabel('Time (s)')
xlim([0 0.3])
