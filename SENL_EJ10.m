%{
Ejercicio: SENL_EJ10
Author: Juan Gonzalez
juangonzalez.com.ar
%}
%% a
g1 = @(x,y) x.^2 - y - 0.2;
g2 = @(x,y) y.^2 - x - 0.3;

xx1 = -3:0.1:3;
yy1 = -3:0.1:3;
[X1,Y1] = meshgrid(xx1,yy1);
Z11 = g1(X1,Y1);
Z22 = g2(X1,Y1);
contour(X1,Y1,Z11,[0,0],'b'), hold on,
contour(X1,Y1,Z22,[0,0],'r'), hold on, grid on,
%% b
pq0 = [1.2  1.2];
tol10 = 1e-5;
itmax10 = 50;

[Pk,iter] = PuntoFijo('G10b',pq0p,tol10,itmax10);
