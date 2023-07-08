%{
Ejercicio: SENL_EJ03
Author: Juan Gonzalez
juangonzalez.com.ar
%}
x1 = 0:1/100:4;
f1 = sign(x-2).*sqrt(abs(x-2)); 
plot(x1,f1), grid on, axis on

f = @(x) sign(x-2).*sqrt(abs(x-2));
sol = NewtonRaphsonDeriv(f,2.5,1e-5,150);

% Como podemos ver no se alcanza nunca la convergencia por tolerancia
% aunque pongamos muchas iteraciones, esto se debe a que la dervivada cerca
% de la raiz crece indefinidamente (punto casi vertical)

%c) No podemos garantizar convergencia del método en carácter local ni
%global dado que f no satisface algunas de las condiciones de los teoremas,
%estos es, por ejemplo, que f no es diferenciable en x=2 y no es una
%función convexa (ver definición). 
%El fenómeno numérico que se observa es el de ciclado permanente de nuestro esquema 
% entre dos valores numéricos.