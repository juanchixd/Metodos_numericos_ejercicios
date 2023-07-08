%{
Ejercicio: SEL_EJ07
Author: Juan Gonzalez
juangonzalez.com.ar
%}
A = [3 -1 1; 3 6 2; 3 3 7];
b = [1; 0; 4];

% b) resolver con Jacobi.m tomando x^0 = 0 y tolerancia de 1*10^-3

x0 = [0; 0; 0];
x_jaco = Jacobi_mod(A, b, x0, 1e-3,10);
disp(x_jaco)
% c) Se puede asegurar la convergencia del metodo de Jacobi siempre que A
% sea diagonalmente dominante, es decir, que el lemento en la posicion
% (i,i) sea en modulo, mayor a la suma de los elementos j!=i (en modulo
% tambien). En este caso podemos ver que se verifica, por lo que es
% diagonalmente dominante y por lo tanto se puede garantizar jacobi.

% d) Repetir con Gauss-Seidel

x_gauss_seidel = GaussSeidel(A, b, x0, 1e-3, 10);
disp(x_gauss_seidel)
% Para este metodo tambien se debe cumplir las mismas condiciones que para
% Jacobi para garantizar la convergencia del metodo.