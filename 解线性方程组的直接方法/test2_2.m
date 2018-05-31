%输入方程组
A = [3.00 6.03 1.99;
    1.27 4.16 -1.23;
    0.990 -4.81 9.34];
b = [1; 1; 1];
n = length(A);

%列主元消去法
%①
det = 1;
%②
for k=1:n-1
    ik = k;
    max = abs(A(k, k));
    for i=k:n
        if (abs(A(i, k)) > max)
            max = abs(A(i, k));
            ik = i;
        end
    end
    if (A(ik, k) == 0)
        det = 0;
        return
    end
    if (ik ~= k)
        for j = k:n
            tmp = A(k, j);
            A(k, j) = A(ik, j);
            A(ik, j) = tmp;
        end
        tmp = b(k);
        b(k) = b(ik);
        b(ik) = tmp;
        det = -det;
    end
    for i = k+1:n
        A(i, k) = A(i, k)/A(k, k);
        for j = k+1:n
            A(i ,j) = A(i, j) - A(i, k)*A(k, j)/A(k, k);
        end
        b(i) = b(i) - A(i, k)*b(k)/A(k, k);
    end
    det = A(k, k)*det;
end
%③
if (A(n, n) == 0)
    det = 0;
    return
end
%④
b(n) = b(n)/A(n, n);
for i = n-1:-1:1
    sum = 0;
    for j = i+1:n
        sum = sum + A(i, j)*b(j);
    end
    b(i) = (b(i)-sum)/A(i, i);
end
%⑤
det = det*A(n, n);
disp(b);
disp(det);