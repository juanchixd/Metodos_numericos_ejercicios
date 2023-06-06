function x1 = rcuad2(x0,tol)
// rcuad2: Aproxima la raiz cuadrada de 2
// ENTRADA:
// x0 = aproximacion inicial de la raiz de 2
// tol = (optional) tolerancia admitida (valor por defecto: tol = 5e-9)
// SALIDA:
// x1 aproximacion de la raiz de 2 al satisfacer la tolerancia
//
// Luciano Ponzellini Marinelli (2022)

clc   // limpio salida

if nargin < 2
    tol = 5e-9;   // tolerancia por defecto
end

mprintf('Valor inicial aproximado: %f\n\n',x0) // Input

mprintf(' n   raiz       error\n')

x1 = .5*(x0+2/x0);   // inicio aproximacion
err = abs(x1-x0);   // calculo error entre aproximaciones
k=1;   // contador

mprintf('%i  %f  %f\n',k,x1,err)   // imprimo valor inicial

while err>tol   // verifico convergencia
    x0 = x1; 
    x1 = .5*(x0+2/x0);   // actualiza termino aproximado
    err = abs(x1-x0);
    k = k +1;
    mprintf('%i  %f  %f\n',k,x1,err)   // imprimo valores aproximados
end

mprintf('\nValor final aproximado: %f\n',x1) // output
mprintf('Valor exacto Scilab   : %f\n',sqrt(2)) // exacto
mprintf('Error absoluto   : %f\n',abs(x1-sqrt(2))) // error final

endfunction
