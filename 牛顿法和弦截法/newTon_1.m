function y = newTon_1(i)
syms x;
f1 = x^3-2*x-2;
f1_dif = matlabFunction(diff(f1, x));
f1 = matlabFunction(f1);
x0 = i;
x1 = x0-f1(x0)/f1_dif(x0);
while abs(x1-x0)>10^(-6)
    x0 = x1;
    x1 = x0-f1(x0)/f1_dif(x0);
y = x1;
end