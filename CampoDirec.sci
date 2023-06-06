function CampoDirec(xmin,xmax,ymin,ymax,fpvi)
// Función para graficar un campo de direcciones
// ENTRADA
// xmin  : valor mínimo del eje de abscisas
// xmax : valor máximo del eje de abscisas
// ymin  : valor mínimo del eje de ordenadas
// ymax : valor máximo del eje de ordenadas
// fpvi    : función que define mi PVI y' = f(t,y)
//
// Autor: Luciano Ponzellini Marinelli (2022)

t = xmin:xmax;
y = ymax:-1:ymin;
[T,Y] = meshgrid(t,y);
dT = ones(xmax-xmin+1,ymax-ymin+1)';
dY = fpvi(T,Y);
champ(t,y,dT',dY'), xgrid

endfunction
