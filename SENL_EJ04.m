%{
Ejercicio: SENL_EJ04
Author: Juan Gonzalez
juangonzalez.com.ar
%}
%%
% f(x) = 3*x.^3+1
x = -1:1/100:0.5;
f1 = 3*x.^3+1;
plot(x,f1), axis on, grid on
% Raiz en x = -0.7

% NewtonRaphson 
f = @(x) 3*x^3+1;
fd = @(x) 9*x^2;
x0 = -0.5;
tol = 1e-10;
NewtonRaphson(f,fd,x0,tol,25);
%%
% f(x) = sin(x+2)=2+x
x=-2.5:1/100:-1;
f1 =  sin(x+2) - 2 - x;
plot(x,f1), axis on, grid on
% Raiz en x = -2

% NewtonRaphson 
f = @(x) sin(x+2) - 2 - x;
fd = @(x) cos(x+2)-1;
x0 = -1.7;
tol = 1e-10;
NewtonRaphson(f,fd,x0,tol,35)

%%
% f(x) = sin(x+2)=2+x
x=-5:1/100:5;
f1 =  x.^2-tan(x);
plot(x,f1), axis on, grid on
% Veo que tiene infinitas raices