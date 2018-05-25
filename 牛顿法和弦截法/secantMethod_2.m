function y = secantMethod_2(a, b)
syms x;
f2 = exp(x)+x-7;
f2 = matlabFunction(f2);
x0 = a;
x1 = b;
x2 = x1-f2(x1)*(x1-x0)/(f2(x1)-f2(x0));
while abs(x2-x1)>10^(-6)
    x0 = x1;
    x1 = x2;
    x2 = x1-f2(x1)*(x1-x0)/(f2(x1)-f2(x0));
y = x2;
end