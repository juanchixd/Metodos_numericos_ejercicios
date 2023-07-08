%{
Ejercicio: Error_EJ10
Author: Juan Gonzalez
juangonzalez.com.ar
%}
% a) 1 + eps/3 + eps/3 + eps/3 = 1 + eps = 1 (redondea)
% b) 1 + (eps/3 + eps/3) == 1 -> Falso (0), porque si bien matlab redondea el
%  lado izquierdo a 1, no es exáctamente 1
% c) 1e-16 + 1 - 1e-16 == 1e-16 - 1e-16 + 1 -> También es falso, por el
% mismo motivo
% d) 1 + eps/2 - 1 -> Será 0