disp('x^3 - 2*x - 2');
x = input('??????');
x1 = myfunction_1(x);
while abs(x1-x) > 10^(-6)
    x = x1;
    x1 = myfunction_1(x);
end
disp(x1);

disp('exp(x)+x-7');
x = input('??????');
x1 = myfunction_2(x);
while abs(x1-x) > 10^(-6)
    x = x1;
    x1 = myfunction_2(x);
end
disp(x1);

disp('exp(x)+sin(x)-4');
x = input('??????');
x1 = myfunction_3(x);
while abs(x1-x) > 10^(-6)
    x = x1;
    x1 = myfunction_3(x);
end
disp(x1);