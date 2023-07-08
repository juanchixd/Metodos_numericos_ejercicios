%{
Ejercicio: SEL_Ej02
Author: Juan Gonzalez
juangonzalez.com.ar
%}
A = [17 5; 1.7 0.5];
b = [22; 2.2];

% a) Tiene infinitas soluciones, ya que R1 = 10*R2
% b) Gauss_m.m
% c) El error se debe a un redondeo, por lo que el segundo renglón no es un
% cero exacto y por tanto puede aproximar un resultado

resultado = Gauss_m(A,b);
disp(resultado);