% In: x: punto a aproximar
%     n: cant de terminos de la sum
% Out: valor aproximado de exp(x) con n term alrededor de x
function s = TaylorExp(x, n)
    f = exp(x)*ones(n, 1);
    s = 1;
    term = 1;
    err = zeros([1,n]);
    fprintf("Termino \t Valor \t\t Error\n")
    for k=1:n
        term = x.*term/k;
        s = s + term;
        err(k) = abs(f(k) - s);
        fprintf("%d \t\t\t %.4f \t %.4f \n", k, s, err(k))
    end
end