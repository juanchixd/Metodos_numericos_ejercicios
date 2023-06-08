%{
Ejercicio: Error_Ej4
Author: Juan Gonzalez
juangonzalez.com.ar
%}
% x^2 - 10000000.000001x + 1 = 0
%a) Usar cuad.m para obtener las raices
fprintf("Usando Cuad_A.m\n")
pol = [1 -10000000.000001 1];
rootsA = Cuad_A(pol);

% b) usar cuad_mejor.m para calcular las raices
fprintf("Usando Cuad_mejor.m\n")
rootsB = Cuad_mejor(pol);

% c) La diferencia entre Cuad_A y Cuad_mejor es que se en la segunda se evita
% la resta de b.
% Cuando b es muy grande al elevarlo al cuadrado se hace mas grande y si le
% restamos un numero pequeño (4ac) en comparacion, el resultado de la raiz
% del discriminate es practicamente el valor absoluto de b, entonces en el caso en el que le
% restamos b al discriminante o viceversa se produce un corrimiento de mantisa ya que
% se restan dos numeros muy parecidos y se introduce un error de redondeo.
