function y = secantMethod_3(a, b)
syms x;
f3 = exp(x)+sin(x)-4;
f3 = matlabFunction(f3);
x0 = a;
x1 = b;
x2 = x1-f3(x1)*(x1-x0)/(f3(x1)-f3(x0));
while abs(x2-x1)>10^(-6)
    x0 = x1;
    x1 = x2;
    x2 = x1-f3(x1)*(x1-x0)/(f3(x1)-f3(x0));
y = x2;
end