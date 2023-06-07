% In: dos funciones y vector abscisas
% Out: vector con el producto de ambas funciones evaluadas en las abscisas
function [result] = multi(f1, f2, v)
result = zeros([1,length(v)]);
for i=1:length(v)
    x = v(i);
    result(i) = f1(x).*f2(x);
end
disp(result)
end
%{
f1 = inline('x^3-x-1')
f2 = inline('exp(-x)-x')
multi( f1, f2, [-1, 0, 1])
ans = -3.7183   -1.0000    0.6321
%}