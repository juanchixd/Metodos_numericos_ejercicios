%{
Ejercicio: SEL_Ej03
Author: Juan Gonzalez
juangonzalez.com.ar
%}
% IN: A: matriz diagonal superior de orden nxn
%     b: vector columna nx1
% OUT: x: vector columna nx1
function x = SEL_SustReg(A, b)
n = length(b);
x(n) = b(n)/A(n,n);
for i = n-1 : -1 : 1
    sum = 0;
    for p = i+1 : n
        sum = sum + A(i,p)*x(p);
    end
    x(i) = (b(i) - sum)/A(i,i);
end
x = x';
end