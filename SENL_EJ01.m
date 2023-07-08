%{
Ejercicio: SENL_EJ01
Author: Juan Gonzalez
juangonzalez.com.ar
%}

%% a) f(x) = e^x - 3x para x E [0,4]
x = 0:1/50:4;
f = exp(x) - 3.*x;
plot(x,f,'g'), grid on
% Graficamente se puede observar que tiene dos raices
%% b) usar NewtonRapshon para obtener las raices
f1 = @(x) exp(x) - 3*x; %funcion
f1d = @(x) exp(x) - 3; %derivada
x0 = 0;
x2 = 1.5;
solucion = [NewtonRaphson(f1,f1d,x0,1e-3,15) NewtonRaphson(f1,f1d,x2,1e-3,15)];
%%
%c) Observemos que vale el teorema de convergencia local pues la función f
%satisface las condiciones del teorema, pero no vale la global. Esto es, 
% el método converge inicializando en los alrededores de alguna posible
% raíz (valores cercanos) pero no podemos asegurar lo mismo para valores de
% de inicio del método arbitrarios.