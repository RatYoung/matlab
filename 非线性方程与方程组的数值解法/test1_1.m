x0 = 0.2;
y = log(x0^2-3*x0+2);
z = log(y^2-3*y+2);
x1 = x0-(y-x0)^2/(z-2*y+x0);
while abs(x1-x0) > 10^(-8)
    x0 = x1;
    y = log(x0^2-3*x0+2);
    z = log(y^2-3*y+2);
    x1 = x0-(y-x0)^2/(z-2*y+x0);
end
disp(x1);