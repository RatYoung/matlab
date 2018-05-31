%Generate Hilbert martix
for n=2:6
    H = zeros(n, n);
    for i=1:n
        for j=1:n
            H(i, j) = 1/(i+j-1);
        end
    end
    disp(cond(H, inf));
end