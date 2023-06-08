%{
Ejercicio: SEL_Ej03
Author: Juan Gonzalez
juangonzalez.com.ar
%}
% IN: A: matriz triangular inferior nxn
%     b: vector nx1
% OUT: x: vector solución nx1
function x = SEL_SustProg(A, b)
n = length(b);
x = zeros([n 1]);
x(1) = b(1)/A(1,1);
for k = 2 : n
    sum = 0;
    for j = 1 : (k-1)
        sum = sum + A(k,j) * x(j);
    end
    x(k) = (b(k) - sum)/A(k,k);
end
x = x';
end