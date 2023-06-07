L = [1 0 0 ; 0 1 0; 1 -2 1];
U = [2 0 1; 0 3 -1; 0 0 -2];
P = [0 1 0; 1 0 0; 0 0 1];
b = [1; 2; 3];

A = L * U; %reconstruyo A
fprintf("Solución por pivoteo parcial (con Gauss)\n")
x_p = Gauss(A, b);
disp(x_p)

fprintf("Solución por factorizacion LU\n")
x_lu = DescompLU(A, b);
disp(x_lu)
% Como A permite una factorizacion LU, A*x = b se resuelve =>
% L*y=b U*x=y
y = L\b;
x = U\y;

fprintf("Solución del sistema A*x = b: \n ")
disp(x)