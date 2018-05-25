function y = newTon_3(i)
syms x;
f3 = exp(x)+sin(x)-4;
f3_dif = matlabFunction(diff(f3, x));
f3 = matlabFunction(f3);
x0 = i;
x1 = x0-f3(x0)/f3_dif(x0);
while abs(x1-x0)>10^(-6)
    x0 = x1;
    x1 = x0-f3(x0)/f3_dif(x0);
y = x1;
end