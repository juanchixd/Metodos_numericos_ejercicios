%{
Ejercicio: EDO_EJ03
Author: Juan Gonzalez
juangonzalez.com.ar
%}
%%
f = @(x, y) x^2 - y;
xe = 0:1/100:4;
fe = (xe).^2 - 2*(xe) + 2 - exp(-(xe));
fexacta = @(x) x^2 - 2*x + 2 - exp(-x);
error = zeros([1, 5]);
a = 0;
b = 4;
y0 = 1;
n = [4 8 16 32 64];
for i = 1 : 5
    [x, y] = Euler(f, a, b, y0, n(i));
    subplot(2, 3, i), plot(xe, fe, 'g'), grid on, hold on,
    subplot(2, 3, i), plot(x, y, '.r');
    error(i) = abs(fexacta(4) - y(end));
end

T = table((4./n)', error', 'VariableNames',["Paso", "Error"]);
disp(T)
% Vemos que a medida que reducimos el paso en magnitud K, el error se
% reduce en magnitud K, es decir, el Error Global Final se reduce de forma
% lineal.
