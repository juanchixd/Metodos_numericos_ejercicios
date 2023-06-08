%{
Ejercicio: Cuad_A
Author: Juan Gonzalez
juangonzalez.com.ar
%}
% In: coef de pol grado 2
% Out: raices del pol
function [roots] = Cuad_A(coef)
    a = coef(1);
    b = coef(2);
    c = coef(3);
    roots(1) = (-b+sqrt(b^2-4*a*c))/(2*a);
    roots(2) = (-b-sqrt(b^2-4*a*c))/(2*a);
    fprintf("Raiz 1: %12.5f \nRaiz 2: %12.5f \n", [roots(1), roots(2)])
end
