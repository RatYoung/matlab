for n = 6:2:10
    Hn = zeros(n, n);
    for i = 1:n
        for j = 1:n
            Hn(i, j) = 1/(i+j-1);
        end
    end

    x = ones(n, 1);
    b = Hn*x;
    
    D = zeros(n, n);
    for i=1:n
        for j=1:n
            if (i == j)
                D(i, j) = Hn(i, j);
            end
        end
    end
    L = -tril(Hn, -1);
    U = -triu(Hn, 1);
    B = D^(-1) * (L+U);
    f = D^(-1)*b;
    
    x0 = zeros(n, 1);
    x1 = B*x0 + f;
    
    count = 1;
    while count <= 300
        x0 = x1;
        x1 = B*x0 + f;
        count = count + 1;
    end
    disp(x1);
end