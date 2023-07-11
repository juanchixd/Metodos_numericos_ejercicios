function fpri = df1dxincremental(f, x, h)
% Author: Juan Bautista Gonzalez
% Legajo: G-5506/9
% In: f es la funcion de entrada
%     x es el punto el cual evaluar
%     h es el incremental (paso)
% Out:fpri funcion derivada en evaluada en x

fpri = (f(x+h)-f(x))/(h);


end
