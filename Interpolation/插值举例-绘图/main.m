x0 = -5 :0.001: 5;
fx = 1 ./ (1 + x0.^2);
plot(x0, fx, 'r');
hold on;

xn = -5 : 5;
yn = 1 ./ (1 + xn.^2);
x = -5 : 0.001: 5;

%��������
p1 = zeros(1, 10001);
for n = 1: 10001
    p1(n) = lagrange(xn,yn, x(n));
end
plot(x, p1, 'b');
hold on;

%�ֶ����Բ�ֵ
plot(xn, yn, 'black');
hold on;

%�ֶ����ΰ������ز�ֵ
p2 = pchip(xn, yn, x);
plot(x, p2, 'green');