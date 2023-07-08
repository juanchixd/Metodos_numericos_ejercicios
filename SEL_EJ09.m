%{
Ejercicio: SEL_EJ09
Author: Juan Gonzalez
juangonzalez.com.ar
%}

tol = 1e-3;
A = [-1 3; 6 -2];
b = [1; 2];
x0 = zeros(length(b),1);
disp(Jacobi(A,b,x0,tol,15));
disp(GaussSeidel(A,b,x0,tol,15));

A = [1 1 0; -1 1 0; 1 2 -3];
b = [2; 0; 0];
x0 = zeros(length(b),1);
disp(Jacobi(A,b,x0,tol,15));
disp(GaussSeidel(A,b,x0,tol,15));

A = [5 -1 1; 2 8 -1; -1 1 4];
b = [10; 11; 3];
x0 = zeros(length(b),1);
disp(Jacobi(A,b,x0,tol,15));
disp(GaussSeidel(A,b,x0,tol,15));