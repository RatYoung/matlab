function x = GauElim(A, b)
    [n, m] = size(A);
    if nargin < 2
        for i = 1 : 1 : n
            for j = 1 : 1 : n
                A(i, j) = 1 / (i + j - 1);
            end
            b(i, 1) = 1;
        end
    end
    
    for j = 1 : n - 1
        if abs(A(j, j)) < eps
            error('zero pivot encountered');
        end
        for i = j + 1 : n
            mult = A(i, j) / A(j, j);
            for k = j + 1 : n
                A(i, k) = A(i, k) - mult * A(j, k);
            end
            A(i, j) = 0;
            b(i, 1) = b(i, 1) - mult * b(j);
        end
    end
    
    for i = n : -1 : 1
        for j = i + 1 : n
            b(i, 1) = b(i, 1) - A(i, j) * x(j, 1);
        end
        x(i, 1) = b(i, 1) / A(i, i);
    end
end