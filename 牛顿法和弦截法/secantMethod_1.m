function y = secantMethod_1(a, b)
syms x;
f1 = x^3-2*x-2;
f1 = matlabFunction(f1);
x0 = a;
x1 = b;
x2 = x1-f1(x1)*(x1-x0)/(f1(x1)-f1(x0));
while abs(x2-x1)>10^(-6)
    x0 = x1;
    x1 = x2;
    x2 = x1-f1(x1)*(x1-x0)/(f1(x1)-f1(x0));
y = x2;
end