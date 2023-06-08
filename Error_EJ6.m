%{
Ejercicio: Error_Ej6
Author: Juan Gonzalez
juangonzalez.com.ar
%}
%% 
% a) Calcular en forma exacta sen(pi/2 + 2*pi*10^j) con j > 0. Por
% identidades trigonometricas, sen(a+b) = sen(a)*cos(b)+cos(a)*sen(b)
% sen(pi/2)*cos(2*pi*10^j)+cos(pi/2)*sen(2*pi*10^j) = cos(2*pi*10^j)

%%
% b) Defino la funcion f(j) dada por sen(pi/2 + 2*pi*10^j) = cos(2*pi*10^j)
% y usando un bucle iterando entre los valores [1, 10, 20, 50, 100, 1000]
format long
f = @(j) cos(2*pi*10^j);
values = [1, 10, 20, 50, 100, 1000];
for i = 1 : length(values)
    fprintf("j = %d => f(j) = %f \n", values(i), f(values(i)))
end
%{
j = 1 => f(j) = 1.000000 
j = 10 => f(j) = 1.000000 
j = 20 => f(j) = 0.689416 
j = 50 => f(j) = -0.987332 
j = 100 => f(j) = 0.959415 
j = 1000 => f(j) = NaN 
Si bien todos los resultados son múltiplos de pi y deberíamos obtener,
en todos los casos valores iguales a -1 o a 1, pero como en la pc el
número pi se almacena con un truncamiento, a medida que aumentamos j el
producto se hace más grande y se corre la mantisa, por lo que se redondea
y se pierden cifras significativas.
%}
