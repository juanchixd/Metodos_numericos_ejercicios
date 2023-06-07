% Usar SerieSeno.m graficar el error total cometido para x E [0,pi/2]
% usando 6 y 15 terminos no nulos del pol de Taylor del sen(x)
% respectivamente.
% SerieSeno debe recibir el x, tolerancia y cant de terminos
x = 0:1/100:2*pi;
f = @(x) sin(x);
err6 = zeros([length(x), 1]);
err15 = zeros([length(x), 1]);
j = 1;
for k=x
    fn = SerieSeno(k, 5*exp(-9),6);
    err6(j) = abs(fn-f(k));
    j = j + 1;
end
j = 1;
for k=x
    fn = SerieSeno(k, 5*exp(-9),15);
    err15(j) = abs(fn - f(k));
    j = j + 1;
end

subplot(1,2,1), plot(x, err6, 'r')
subplot(1,2,2), plot(x, err15, 'b')

% El error total en cada caso lo determina la cantidad de términos que se
% usan. Para el caso de usar 15 términos no nulos se comete menos error total 
% que en el casocomete menos error total que en el caso de usar 6 términos 
% no nulos
%% b) con exp
x = 0:1/100:2*pi;
f = @(x) exp(x);
err6 = zeros([length(x), 1]);
err15 = zeros([length(x), 1]);
j = 1;
for k=x
    fn = TaylorExp(k, 6);
    err6(j) = abs(fn-f(k));
    j = j + 1;
end
j = 1;
for k=x
    fn = TaylorExp(k, 15);
    err15(j) = abs(fn - f(k));
    j = j +1;
end

subplot(1,2,1), plot(x, err6, 'r')
subplot(1,2,2), plot(x, err15, 'b')