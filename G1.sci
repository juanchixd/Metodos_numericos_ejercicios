function Y = G1(X)
// Función generatriz 1 del SENL para Punto Fijo (ver transparencias)
// ENTRADA: X = [ X(1) X(2) ] vector fila de dos componentes
// SALIDA: Y = [ Y(1) Y(2) ] vector fila de dos componentes
//
// Luciano Ponzellini Marinelli (2022)

Y(1) = ( X(1)^2 - X(2) + 0.5) / 2;
Y(2) = (-X(1)^2 - 4*X(2)^2 + 8*X(2) + 4) / 8;
Y=Y';

endfunction
