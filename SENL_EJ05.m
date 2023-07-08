%{
Ejercicio: SENL_EJ05
Author: Juan Gonzalez
juangonzalez.com.ar
%}
% Hecho en NewtonRaphsonMOD
%%
f = @(x) x.^3 - 3.*x + 2;
fd = @(x) 3*(x.^2) - 3;
x0 = 1.2;
tol = 1e-5;
maxiter = 50;
alpha = 1;
root = 1;
NewtonRaphson_MOD(f,fd,x0,tol,maxiter,alpha,root)
%% c
f = @(x) x.^3 - 3.*x + 2;
x2 = -2:1/100:2;
y2 = f(x2);
fd = @(x) 3*(x.^2) - 3;
x0 = 1.2;
tol = 1e-5;
maxiter = 50;
alpha = 2;
root = 1;
NewtonRaphson_MOD(f,fd,x0,tol,maxiter,alpha,root)
%Se observa que con la modificación propuesta la velocidad de convergencia
%aumenta considerablemente. La fórmula mejorada en tres iteraciones llega
%con exactitud a la raíz de f.