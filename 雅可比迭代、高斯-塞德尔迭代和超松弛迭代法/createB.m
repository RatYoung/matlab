function b = createB(n)
c = ones(n, 1);
if n == 2
    c(1) = 2;
    c(2) = 2;
end
if n > 2
    for i = 1:n
        if i == 1 || i == n
            c(i) = 2;
        end
    end
end
b = c;
end