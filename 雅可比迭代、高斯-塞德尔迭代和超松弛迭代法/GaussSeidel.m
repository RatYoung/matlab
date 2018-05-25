function y = GaussSeidel(A, b, m)
D = diag(diag(A), 0);
L = -(tril(A) - D);
U = -(triu(A) - D);
B = (D-L)^(-1)*U;
f = (D-L) ^ (-1) * b;
if max(abs(eig(B))) >= 1
    fprintf('Gauss-Seidel method is not convergent in this case.');
    y = 0;
    return
end
x0 = zeros(m, 1);
x1 = B * x0 + f;
e = 10 ^ -6;
while max(abs(x1 - x0)) >= e
    x0 = x1;
    x1 = B * x0 + f;
end
y = x1;
end