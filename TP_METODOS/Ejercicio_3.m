% Ejercicio 3
clear, clc
% Author: Juan Bautista Gonzalez
% Legajo: G-5506/9
% Carrera: Electronica

% a) x' = x   + 2*y;
%    y' = 3*x + 2*y;
%    X(0) = 6;
%    y(0) = 4;
% Modificar Euler para resolver el sistema

% b) aproxime las soluciones del sistema anterior en el [0,1] con n = 100
% subintervalos
% Defino las funciones, intervalo, condiciones iniciales y el numero de
% subintervalos
f1 = @(t, x, y) (x + 2*y);
f2 = @(t, x, y) (3*x + 2*y);
a = 0;
b = 1;
x0 = 6;
y0 = 4;
n = 100;
[j, x, y] = Euler_mod(f1, f2, a, b, x0, y0, n);

% c) Utilizar subplot, comparar con las soluciones exactas dadas
% x(t) = 4*e^(4*t) + 2*e^(-t)
% y(t) = 6*e^(4*t) - 2*e^(-t)
% Defino intervalo y las funciones ya evaluadas para plotear
t = 0 : 1/100 : 1;
exac1 = 4*exp(4.*t) + 2*exp(-t);
exac2 = 6*exp(4.*t) - 2*exp(-t);

subplot(2,2,1),plot(j, x,'r'),
legend('x-euler(t)'),
subplot(2,2,2),plot(t, exac1,'g'), 
legend('x-exacta(t)'),
subplot(2,2,3),plot(j, y,'b'), 
legend('y-euler(t)'),
subplot(2,2,4),plot(t, exac2,'black'), grid on,
legend('y-exacta(t)'),

% Graficamente la x obtenida con euler y la x exacta por enunciado, son
% bastante proximas. Para el caso de la y se nota una diferencia.
% Esta diferencia y proximidad en el caso de x se debe a errores de
% truncamiento ya que es un metodo iterativo y no un metodo directo por 
% lo que el proceso devuelve una solución aproximada.