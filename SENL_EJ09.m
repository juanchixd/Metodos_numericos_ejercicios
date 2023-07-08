%{
Ejercicio: SENL_EJ09
Author: Juan Gonzalez
juangonzalez.com.ar
%}
%%
x = -5:1/100:5;
y = x;
[X, Y] = meshgrid(x,y);
G11 = @(x,y) (y-x.^3 + 3*x.^2 + 3*x)/7;
G22 = @(x,y) (y.^2 + 2*y - x - 2)/2;
Z1 = G11(X,Y);
Z2 = G22(X,Y);
contour(X,Y,Z1,[0 0], 'b'), hold on,
contour(X,Y,Z2,[0 0],'g'), grid on, hold on,
%TERMINAR