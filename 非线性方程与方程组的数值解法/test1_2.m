%对原函数求导
syms x;
y_syms = x^3+2*x^2+10*x-20;
y_syms_diff = diff(y_syms, x);
y = matlabFunction(y_syms);
y_diff = matlabFunction(y_syms_diff);

x0 = 1.5;
disp('初始值：');
disp(x0);

count = 0;

x1 = x0 - y(x0)/y_diff(x0);
while abs(x1-x0)>10^(-8)
    x0 = x1;
    x1 = x0 - y(x0)/y_diff(x0);
    count = count + 1;
    disp(x1);
end
disp('迭代次数：');
disp(count);