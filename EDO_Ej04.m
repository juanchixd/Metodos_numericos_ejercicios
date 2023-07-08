%{
Ejercicio: EDO_EJ04
Author: Juan Gonzalez
juangonzalez.com.ar
%}
%%
f = @(t, y) 3/2 * y ^(1/3);
a = 0;
b = 1;
y0 = 0;
n = 25;
[ta, ya] = Euler(f, a, b, y0, n);
plot(ta, ya), grid on;
% Devuelve la solucion 0 para la condicion inicial dada