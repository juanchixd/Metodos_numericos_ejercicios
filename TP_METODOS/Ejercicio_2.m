% Ejercicio 2
clear, clc
% Author: Juan Bautista Gonzalez
% Legajo: G-5506/9
% Carrera: Electronica

% a) Grafique las curvas, en un mismo grafico, en el plano z = 0
g1 = @(x,y) x.^2 - y - 0.2;
g2 = @(x,y) y.^2 - x - 0.3;

xx1 = -3:0.1:3;
yy1 = -3:0.1:3;
[X1,Y1] = meshgrid(xx1,yy1);
Z11 = g1(X1,Y1);
Z22 = g2(X1,Y1);
contour(X1,Y1,Z11,[0,0],'b'), hold on,
contour(X1,Y1,Z22,[0,0],'r'), hold on, grid on,
legend('x^2 - y - 0.2', 'y^2 - x - 0.3')
title('Curvas en el plano z = 0')

% b) Utilice el metodo de Punto Fijo, comenzando en el punto inicial (p0,
% q0) = (1.2; 1.2), para aproximar una raiz
% defino las generatrices en el archivo G.m 
% Defino el punto inicial, la tolerancia y la cantidad de iteraciones
% maximas a realizar por el script de punto fijo
p0q0_b = [1.2  1.2];
tol = 1e-5;
itmax = 50;
% Ejecuto el script pasandole como parametros el nombre del archivo donde
% defini las generatrices, el punto inicial, tolerancia que quiero que
% tenga y la cantidad de iteraciones maximas. El mismo script me devuelve
% dos variables, la aproximación de la solucion y la cantidad de
% iteraciones que hizo

[Pk_b, iter_b] = PuntoFijo('G', p0q0_b, tol, itmax);
% No converge a una solución

% c) Repita lo mismo anterior pero comenzando en (p0, q0) = (-0.2; -0.2)

% Le paso mismas generatrices,  tolerancia e iteraciones maximas cambio el
% punto inicial
p0q0_c = [-0.2 -0.2];

[Pk_c, iter_c] = PuntoFijo('G', p0q0_c, tol, itmax);
% Con el punto fijo dado converge a una solución en una cant de iteraciones
% finitas

% d)
% Las generatrices son:
% g1 = y.^2 - 0.3;
% g2 = x.^2 - 0.2;
% Las derivadas con respecto a x
% g1x = 0
% g2x = 2*x
% Las derivadas con respecto a y
% g1y = 2*y 
% g2y = 0
% Por teorema de convergencia para punto fijo, la region de convergencia
% esta dada por 
% |(g1x)| + |(g1y)| = |0| + |2*x| < 1 => |x| < 1/2 y 
% |(g2x)| + |(g2y)| = |2*y| + |0| < 1 => |y| < 1/2 

% Para el punto elegido en el inciso b no se puede garantizar la
% convergencia ya que el punto no se encuentra deltro dentro de la region
% antes mencionada por lo que seria esperable que el metodo no concluya 
% (diverga) con una solución para dicho punto.
% Por el contrario, en el punto elegido en el inciso c, si seria esperable
% que el metodo concluya/converga a una solución.
