A = [10 7 8 7;
    7 5 6 5;
    8 6 10 9;
    7 5 9 10];
b = [32; 23; 33; 31];
d = det(A);
disp('����A������ʽ��');
disp(d);
E = eig(A);
disp('����A������ֵ��');
disp(E);
C = cond(A, 2);
disp('����A �ĵڶ���������');
disp(C);

B = [10 7 8.1 7.2;
    7.08 5.04 6 5;
    8 5.98 9.89 9;
    6.99 5 9 9.98];
x = [1; 1; 1; 1];

%�����ض��ֽⷨ
L = ones(n);
U = zeros(n);
%��
for i=1:n
    U(1, i) = B(1, i);
    L(i, 1) = B(1, i)/B(1, 1);
end
%��
for r=2:n
    for i=r:n
        sum = 0;
        for k=1:r-1
            sum = sum + L(r, k)*U(k, i);
        end
        U(r, i) = B(r, i)-sum;
    end
end
%��
for r=2:n
    for i=r+1:n
        if r ~= n
            sum = 0;
            for k=1:r-1
                sum = sum + L(i, k)*U(k, r);
            end
            L(i, r) = (B(i, r)-sum)/U(r, r);
        end
    end
end
%��
y = zeros(4, 1);
y(1) = b(1);
for i=2:n
    sum = 0;
    for k=1:i-1
        sum = sum + L(i, k)*y(k);
    end
    y(i) = b(i) - sum;
end
%��
x2 = zeros(4, 1);
x2(n) = y(n)/U(n, n);
for i=n-1:-1:1
    sum = 0;
    for k=i+1:n
        sum = sum + U(i, k)*x2(k);
    end
    x2(i) = (y(i)-sum)/U(i, i);
end
x1 = x2 - x;
disp(x1);
disp('x1�ĵڶ�������');
disp(norm(x1, 2));