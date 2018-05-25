disp('x^5 + x - 1');
x1 = input('?????');
x2 = input('?????');
e = 10^(-7);
f1 = myfunction_1(x1);
f2 = myfunction_1(x2);
y = dichotomyRoot_1(x1, x2, e);
disp('root=');
disp(y);

disp('sin(x)-6*x-5');
x1 = input('?????');
x2 = input('?????');
e = 10^(-7);
f1 = myfunction_2(x1);
f2 = myfunction_2(x2);
y = dichotomyRoot_2(x1, x2, e);
disp('root=');
disp(y);

disp('lnx+x2-3');
x1 = input('?????');
x2 = input('?????');
e = 10^(-7);
f1 = myfunction_3(x1);
f2 = myfunction_3(x2);
y = dichotomyRoot_3(x1, x2, e);
disp('root=');
disp(y);