% Ejercicio 1
clear, clc
% Author: Juan Bautista Gonzalez
% Legajo: G-5506/9
% Carrera: Electronica

% a) Realizado en df1dxincremental.m
% b) considere la funcion f(x) = x^2 cos(x). Utilizando un paso h=0.01 en
% la derivada, calcule numericamente la derivada f' en el intervalo {-0.5,
% 0.5], usando las formulas del cociente incremental y de la derivada
% centrada. Grafique ambas aproximaciones en una misma figura con distintos
% colores
% Defino el intervalo, el incremental y la función
X = -0.5 : 1/100 : 0.5;
f = @(x) ((x.^2) .* cos(x));
h = 0.01;

inc = df1dxincremental(f, X, h); % con cociente incremental h = 0.01
cent = df1dx(f,X); % derivada centrada

subplot(2, 1, 1), plot(X,inc,'.r', X,cent,'xg'), 
legend('Metodo Incremental','Metodo Centrado'), grid on, hold on
title('Metodos Centrado e Incremental de la derivada primera');

% c) En otra figura, grafique los errores absolutos en dicho intervalo para
% ambos casos usando el comando subplot (tener en cuenta la formula
% explicita de la derivada de la función).
%  g(x) = f'(x) = 2*x*cos(x)-x^2*sin(x)
% Defino la función y la evaluo en el intervalo
%g = @(x) ('2.*x.*cos(x) - x.^2 .*sin(x)');
exacta = 2*X.*cos(X) - X.^2.*sin(X);

error_abs_inc = abs(exacta - inc);
error_abs_cent =  abs(exacta - cent);

subplot(2,1,2), 
plot(X,error_abs_inc,'.r',X,error_abs_cent,'xg'), 
legend('Error absoluto Metodo Incremental', ...
       'Error absoluto Metodo Centrado'), grid on, hold on
title('Errores absolutos de los metodos Centrado e Incremental de la derivada primera')

% Vemos que el metodo incremental tiene mas error, este es un error de
% redondeo, ya que solo podria haber error de truncamiento si estuviesemos
% usando un metodo iterativo
