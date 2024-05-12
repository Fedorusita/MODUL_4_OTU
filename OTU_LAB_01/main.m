declaring_values;

T = 25;

ode_opts = odeset('AbsTol',[1e-5,1e-5,1e-5],'RelTol',1e-5);

y_1 = @(t) 1;
y_sin = @(t) 2*sin(t);

model_1 = @(t, x) model(t, x, y_1);
model_sin = @(t, x) model(t, x, y_sin);




[time, x] = ode45(model_1, [0, T], x_zero, ode_opts);
figure;
plot(time, x(:,1), 'b-', time, x(:,2), 'g--', 'LineWidth', 2);
legend('x_1(t)','x_2(t)');
title('Входной сигнал 1, нулевые Н.У.');
grid on;


[time, x] = ode45(model_1, [0, T], x_nonzero, ode_opts);
figure;
plot(time, x(:,1), 'b-', time, x(:,2), 'g--', 'LineWidth', 2);
legend('x_1(t)','x_2(t)');
title('Входной сигнал 1, ненулевые Н.У.');
grid on;


[time, x] = ode45(model_sin, [0, T], x_zero, ode_opts);
figure;
plot(time, x(:,1), 'b-', time, x(:,2), 'g--', 'LineWidth', 2);
legend('x_1(t)','x_2(t)');
title('Входной сигнал sin(t), нулевые Н.У.');
grid on;


[time, x] = ode45(model_sin, [0, T], x_nonzero, ode_opts);
figure;
plot(time, x(:,1), 'b-', time, x(:,2), 'g--', 'LineWidth', 2);
legend('x_1(t)','x_2(t)');
title('Входной сигнал sin(t), ненулевые Н.У.');
grid on;


pause