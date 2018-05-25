%(1)
disp('Using Jacobi method');
n = input('Please input the size of matrix in question (1):');
A = createMatrix(n);
b = createB(n);
disp(A);
disp(b);
x = Jacobi(A, b, n);
disp(x);

disp('Using Gauss-Seidel method');
x = GaussSeidel(A, b, n);
disp(x);

disp('Using SOR');
x = SOR(A, b, n);
disp(x);

%(2)
disp('Using Jacobi method');
n = input('Please input the size of matrix in question (2):');
A = creatHilbert(n);
b = ones(n, 1);
disp(A);
disp(b);
x = Jacobi(A, b, n);
if x == 0
    disp('The function is not converge.\n');
else
    disp(x);
end

disp('Using Gauss-Seidel method');
x = GaussSeidel(A, b, n);
disp(x);

disp('Using SOR');
x = SOR(A, b, n);
disp(x);