%{
Ejercicio: Error_Ej1
Author: Juan Gonzalez
juangonzalez.com.ar
%}
% f = 1./(1+2*x)-(1-x)./(1+x);

% a) Tenemos que puede se inexacto cerca de x = 0 porque tenemos
% el término (1-x)/(1+x) que a medida que x se acerca al 0 este se va
% redondeando y perdemos información por el redondedo del soft.
% El primer termino y el segundo son cercanos.

f1 = @(x) 1./(1+2*x);
f2 = @(x) (1-x)./(1+x);

f1(0.01),f2(0.01), dif1=f1(0.01)-f2(0.01);
fprintf("Evaluada en 0.01: %.14f", dif1)
f1(0.001),f2(0.001), dif2=f1(0.001)-f2(0.001);
fprintf("\nEvaluada en 0.001: %.14f", dif2)
f1(0.000001),f2(0.000001), dif3=f1(0.000001)-f2(0.000001);
fprintf("\nEvaluada en 0.000001: %.14f", dif3)

% b) Para solucionar esto debemos eliminar ese término, para eso podemos
% operar algebraicamente para obtener la función f1(x)
% f1 = (2*x.^2)/(2*x.^2+3.*x+1);

% c) Plotear ambas funciones para diferentes intervalos. La f en rojo y la
% f1 en verde

% Definiendo los subintervalos tal que
% x1 = [-1*10^-1, 1*10^-1]
% x2 = [-1*10^-7, 1*10^-7]
% x3 = [-1*10^-8, 1*10^-8]
% En los tres casos uso un step de 1e-10 para discretizar

x = -1e-1:1e-5:1e-1;
f = @(x) 1./(1+2*x)-(1-x)./(1+x);
f1 = @(x) (2*x.^2)./(2*x.^2+3.*x+1);
y11 = f(x);
y12 = f1(x);
subplot(2,2,1), plot(x, y11, 'b', x, y12, 'g'), grid on

x = -1e-7:1e-10:1e-7;
y21 = f(x);
y22 = f1(x);
subplot(2,2,2),plot(x, y21, 'b', x, y22, 'g'), grid on

x = -1e-8:1e-10:1e-8;
y31 = f(x);
y32 = f1(x);
subplot(2,2,3),plot(x, y31, 'b', x, y32, 'g'), grid on
