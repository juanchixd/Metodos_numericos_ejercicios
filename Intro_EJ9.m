%{
Ejercicio: Intro_Ej9
Author: Juan Gonzalez
juangonzalez.com.ar
%}
%Defino el vector de los coef del pol
pol = [1 0 0 3 0 -2];
%Defino los intervalos
x = 0:1/401:2;
y = 0:0.5:2;
%Inicializo en cero los vectores para darles un tamaño y evitar error de
%tamaño
value = zeros([length(x), 1]);
value_y = zeros([length(y), 1]);
j = 1;

for i=x
    value(j) = polyval(pol,i);
    j = j + 1;
end
j = 1;
for i=y
    value_y(j) = polyval(pol,i);
    j = j + 1;
end
%Grafico
plot(x, value, 'r', y, value_y, 'b*'), grid on