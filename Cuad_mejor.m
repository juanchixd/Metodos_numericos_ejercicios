% Cuad_mejor
% Calcular las raices de una ecu cuadratica
% In: coef vector fila
% Out: vector raices
function roots = Cuad_mejor(coef)
    a = coef(1);
    b = coef(2);
    c = coef(3);
    roots(1) = (-2*c)/(b+sqrt(b^2-4*a*c));
    roots(2) = (-2*c)/(b-sqrt(b^2-4*a*c));
    fprintf("Raiz 1: %12.5f \nRaiz 2: %12.5f \n", [roots(1), roots(2)])
end
