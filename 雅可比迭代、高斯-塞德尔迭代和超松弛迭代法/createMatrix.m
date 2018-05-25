function A = createMatrix(n)
a = zeros(n);
for i = 1:n
    for j = 1:n
        if i == 1
            a(i, 1) = 3;
            a(i, 2) = -1;
            break
        end
        if i == n
            a(i, n-1) = -1;
            a(i, n) = 3;
            break;
        end
        a(i, i-1) = -1;
        a(i, i) = 3;
        a(i, i+1) = -1;
    end
end
A = a;
end