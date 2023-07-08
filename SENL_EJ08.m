%{
Ejercicio: SENL_EJ08
Author: Juan Gonzalez
juangonzalez.com.ar
%}
%%
%Defino las generatrices en el archivo G_EJ08
p0 = [1.2, 2.0];
tol = 1e-5;
itermax = 50;
[Pk,iter] = PuntoFijo('G_EJ08', p0, tol, itermax);
disp(Pk)
x = -5:1/100:5;
y = x;
% Plotear en z = 0 usando contour
[X, Y] = meshgrid(x,y);
G11 = @(x,y) -4*x.^2 + y.^2 + 1;
G22 = @(x,y) 2*x - x.^2 - y.^2 + 3;
Z1 = G11(X,Y);
Z2 = G22(X,Y);

contour(X,Y,Z1,[0 0], 'b'), hold on,
contour(X,Y,Z2,[0 0],'g'), grid on, hold on,