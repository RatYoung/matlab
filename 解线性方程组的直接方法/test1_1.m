%输入方程组
A = [10 -7 0 1; 
    -3 2.099999 6 2;
    5 -1 5 -1;
    2 1 0 2];
b = [8; 5.900001; 5; 1];
n = length(A);

%杜利特尔分解法
L = ones(n);
U = zeros(n);
%①
for i=1:n
    U(1, i) = A(1, i);
    L(i, 1) = A(1, i)/A(1, 1);
end
%②
for r=2:n
    for i=r:n
        sum = 0;
        for k=1:r-1
            sum = sum + L(r, k)*U(k, i);
        end
        U(r, i) = A(r, i)-sum;
    end
end
disp(U);
%③
for r=2:n
    for i=r+1:n
        if r ~= n
            sum = 0;
            for k=1:r-1
                sum = sum + L(i, k)*U(k, r);
            end
            L(i, r) = (A(i, r)-sum)/U(r, r);
        end
    end
end
disp(L);
%④
y = zeros(4, 1);
y(1) = b(1);
for i=2:n
    sum = 0;
    for k=1:i-1
        sum = sum + L(i, k)*y(k);
    end
    y(i) = b(i) - sum;
end
%⑤
x = zeros(4, 1);
x(n) = y(n)/U(n, n);
for i=n-1:-1:1
    sum = 0;
    for k=i+1:n
        sum = sum + U(i, k)*x(k);
    end
    x(i) = (y(i)-sum)/U(i, i);
end
disp(x);