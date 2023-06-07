% Cargar datos desde archivos, resolver Ax=b con \ y guardar en sol.dat

A = load('matriz.dat');
b = load('rhs.dat');

x = A \ b;

save sol.dat x -ascii