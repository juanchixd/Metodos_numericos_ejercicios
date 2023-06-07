%% a) con surf
%Defino intervalos (a mas chico sea el numero del medio, mas suave sera la
%grafica)
x = -1:1/100:1;
y = -1:1/100:1;

[X, Y] = meshgrid(x,y);
%La función
Z = exp(-(X.^2+Y.^2));

surf(X, Y, Z), colorbar

%% a) con mesh
%Defino intervalos (a mas chico sea el numero del medio, mas suave sera la
%grafica)
x = -1:1/100:1;
y = -1:1/100:1;

[X, Y] = meshgrid(x,y);
%La función
Z = exp(-(X.^2+Y.^2));

mesh(X, Y, Z), colorbar

%% b)
%Defino intervalos (a mas chico sea el numero del medio, mas suave sera la
%grafica)
x = -1:1/100:1;
y = -1:1/100:1;

[X, Y] = meshgrid(x,y);
%La función
Z = exp(-(X.^2+Y.^2));

mesh(X, Y, Z)
contour(X,Y,Z,10), grid on