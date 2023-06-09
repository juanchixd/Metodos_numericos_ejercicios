function z = diagdom(A)
// Determina si la matriz A es diagonalmente dominante
// Datos: A matriz invertible nxn
// Resultado: z variable logica: 0 false - 1 true
//
// Autor: Luciano Ponzellini Marinelli (2022)

[n,n] = size(A);
i = 0;
z = 1;

while ( (i < n) & (z == 1) )
   i = i+1;
   if sum(abs(A(i,:))) >= 2*abs(A(i,i))
        z = 0;
   end
end

endfunction
