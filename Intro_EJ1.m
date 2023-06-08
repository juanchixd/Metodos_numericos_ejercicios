%{
Ejercicio: Intro_Ej1
Author: Juan Gonzalez
juangonzalez.com.ar
%}
% Ejercicio 1
v = [5; 0; 4; 5; -2; 1; 7];
x = [4, 1];
y = [2 5];
z = [3 0 1; 1 2 6; 0 -1 7];
%{
El min devolvera el minimo valor entre el 2do elemento y el 7mo
con saltos de a 5. Osea solo tendra los elementos 0 y 7, de estos
el min es el 0.
%}

min(v(2:5:7))
min([0,7]) %<= equivalente con los valores reemplazados
%{
El size devolvera el tamaño de la matriz transpuesta z
En este caso de 3x3
%}

size(z')
%{
El ones devuelve una matriz con todos unos con dimensines
dadas por el vector x
%}

ones(x)
%El resultado sera el producto entre los vectores x e
% y transpuesta

x * y' %resultado A = [13]
%El siguiente producto dara error pues el producto no
%esta dado

y * y
%Producto entre x transpuesta e y

x' * y %resultado B = [8 20; 2 5]
%Producto entre la matriz z y el vector columna de los
%primero 3 elementos de v

z * v(1:3) %resultado C =[ 19; 29; 28]
%Error, dado que no puedo concatenar matrices de distinto
%tamaño

[z v]
%Devuelve los elementos de z que estan en las posiciones
%de los elementos de y.

z(y) %resultado = 1 2
%Es la suma entre los elementos del vector y, y de les
%suma un 2 por cada componente que tenga el vector

sum(j+2) %resultado = 11