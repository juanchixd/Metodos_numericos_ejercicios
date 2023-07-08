function Y = G_EJ08(X)
% Función generatriz 1 del SENL para Punto Fijo (ver transparencias)
% ENTRADA: X = [ X(1) X(2) ] vector fila de dos componentes
% SALIDA: Y = [ Y(1) Y(2) ] vector fila de dos componentes
%
% Luciano Ponzellini Marinelli (2022)

Y(1) = -4 * X(1)^2 + X(2)^2 + 1;
Y(2) = 2*X(1) - X(1)^2 - X(2)^2 + 3;
