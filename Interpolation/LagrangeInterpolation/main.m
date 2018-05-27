%Lagrange Interpolation
x = [0.32, 0.34, 0.36];
y = [0.314567, 0.333487, 0.352274];
xh = 0.3367;
disp(lagrange(x, y, xh));

sec_dif = -sin(0.3367);
r1 = 0.5*sec_dif*(xh-0.32)*(xh-0.34);
disp(r1);