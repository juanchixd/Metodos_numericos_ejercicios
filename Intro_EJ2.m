%Ejercicio 2
a = [ 1, 5, -1];
b = 3:-2:-2;
c = [4 6 -1 0 -6 7 9 1 5];
d = [-1 1 5; 2 3 0; 1 5 -2];
% I)Obtener el maximo de cada fila de la matriz d
max(d)
% II)Obtener la suma de los valores abs de todos los elementos de d
sum(sum(abs(d)))
% III)Obtener la suma de los elem de pos par del vector c
sum(c(2:2:end))
% IV)Calcular el min valor entre ls elementos de pos 3, 4, 5 y 6 de c
min(c(3:1:6))
% V) Calcular la primer columna del producto externo de a por b
a(1) * b(1)
% VI) Eliminar el cuarto elemento del vector c
c(4) = []
% VII) Generar un vector llamado z con los elem de pos impar del vector c
z = c(1:2:end)
% VIII) Agregar una cuarta columna a la matriz d cuyos elementos sean -2,
% 3,0
d = [d [-2; 3; 0]]
%d = horzcat(d, [-2; 3; 0]) % otra opción
% IX) Armar una matriz digonal con la diagonal de la matriz d
diagonal = diag(diag(d))
% X) Calcular la norma del vector a-b
norm(a-b)