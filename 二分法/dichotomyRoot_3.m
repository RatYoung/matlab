function y = dichotomyRoot_3(x1, x2, e)
x = (x1+x2)/2;
f3 = myfunction_3(x);
f1 = myfunction_3(x1);
if f1*f3 < 0
    m = x - x1;
    if m > e
        x2 = x;
        y = dichotomyRoot_3(x1, x2, e);
    else
        y = x;
    end
else
    m = x2 - x;
    if m > e
        x1 = x;
        y = dichotomyRoot_3(x1, x2, e);
    else
        y = x;
    end
end
end