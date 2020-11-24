close all

figure;
plot(A.Time, A.Data(:,:), 'LineWidth', 1)
ylabel('Angle (rad)')
legend('motor','First','Second','Third','Four','Location','Best')
grid on
title('angle')
xlabel('Time (s)')
% xlim([0 0.5])

figure;
plot(W.Time, W.Data(:,:)*30/pi, 'LineWidth', 1)
ylabel('velocity (rpm)')
legend('motor','First','Second','Third','Four','Location','Best')
grid on
title('velocity')
xlabel('Time (s)')
% xlim([0 0.5])
% ylim([0 400])

figure;
plot(T.Time, T.Data(:,:), 'LineWidth', 1)
ylabel('torque (Nm)')
legend('motor','First','Second','Third','Four','Location','Best')
grid on
title('torque')
xlabel('Time (s)')
% xlim([0 0.5])






figure;
subplot(321)
plot(A.Time, A.Data(:,:), 'LineWidth', 1)
ylabel('Angle (rad)')
legend('motor','First','Second','Third','Four','Location','Best')
grid on
title('angle')
xlabel('Time (s)')

subplot(322)
plot(A.Time, A.Data(:,:), 'LineWidth', 1)
ylabel('Angle (rad)')
legend('motor','First','Second','Third','Four','Location','Best')
grid on
title('angle')
xlabel('Time (s)')
xlim([0.20 0.22])
ylim([0 0.03])
% xlim([0.0 0.3])

subplot(323)
plot(W.Time, W.Data(:,:)*30/pi, 'LineWidth', 1)
ylabel('velocity (rpm)')
legend('motor','First','Second','Third','Four','Location','Best')
grid on
title('velocity')
xlabel('Time (s)')

subplot(324)
plot(W.Time, W.Data(:,:)*30/pi, 'LineWidth', 1)
ylabel('velocity (rpm)')
legend('motor','First','Second','Third','Four','Location','Best')
grid on
title('velocity')
xlabel('Time (s)')
xlim([0.20 0.22])
ylim([0 30])
% xlim([0.0 0.3])

subplot(325)
plot(T.Time, T.Data(:,:), 'LineWidth', 1)
ylabel('torque (Nm)')
legend('motor','First','Second','Third','Four','Location','Best')
grid on
title('torque')
xlabel('Time (s)')

subplot(326)
plot(T.Time, T.Data(:,:), 'LineWidth', 1)
ylabel('torque (Nm)')
legend('motor','First','Second','Third','Four','Location','Best')
grid on
title('torque')
xlabel('Time (s)')
xlim([0.20 0.22])
% xlim([0.0 0.3])