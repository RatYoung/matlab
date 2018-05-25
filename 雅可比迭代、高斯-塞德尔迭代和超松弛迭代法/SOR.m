function y = SOR(A, b, m)
%????
w = 1.3;
D = diag(diag(A), 0);
L = -(tril(A) - D);
U = -(triu(A) - D);
Lw = (D-w*L)^(-1)*((1-w)*D+w*U);
f = w*(D-w*L) ^ (-1) * b;
if max(abs(eig(Lw))) >= 1
    fprintf('The function is not converge.');
    y = 0;
    return
end
x0 = zeros(m, 1);
x1 = Lw * x0 + f;
e = 10 ^ -6;
while max(abs(x1 - x0)) >= e
    x0 = x1;
    x1 = Lw * x0 + f;
end
y = x1;
end