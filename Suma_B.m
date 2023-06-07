% In: dos vectores renglon o columna
% Out: vector suma en forma de columna

function [v] = Suma_B(x, y)
if size(x) == size(y)
    v = x + y;
else
    v = x + y';
end
if size(v) > 1
    v = v';
end

%{
%Otra opcion
function [v] = Suma_B(x, y)
    for i=1:length(x)
        v(i)= x(i)+y(i);
    end
v = v'
%}
end
