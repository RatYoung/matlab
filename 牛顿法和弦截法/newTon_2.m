function y = newTon_2(i)
syms x;
f2 = exp(x)+x-7;
f2_dif = matlabFunction(diff(f2, x));
f2 = matlabFunction(f2);
x0 = i;
x1 = x0-f2(x0)/f2_dif(x0);
while abs(x1-x0)>10^(-6)
    x0 = x1;
    x1 = x0-f2(x0)/f2_dif(x0);
y = x1;
end