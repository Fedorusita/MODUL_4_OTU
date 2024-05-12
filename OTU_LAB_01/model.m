function xp = model(t, x, y)
declaring_values;
disp(t);
xp = zeros(3, 1);



s_in = y(t);
xp(1) = x(2);
xp(2) = x(3);
xp(3) = b0 * s_in- a2 * x(3) - a1 * x(2) - a0 * x(1);