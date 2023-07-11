%% Ejercicio 1
clear, clc
% a) Al evaluar la funcion f(x) en las inmediaciones de cero, obtengo que
% en el numerador una resta de numeros muy parecidos (1 - (~1)), donde esta
% resta de numeros muy parecidos produce un corrimiento de la mantiza,  y
% por lo tanto un error por perdida de cifras significativas. Por lo que la
% funcion puede no estar bien representada al evaluarla en proximidades de
% x=0
% b) Para disminuir este error busco redefinir la funcion de manera que no
% ocurran dichas perdidas de cifras significativas, utilizando una funcion
% equivalente a f(x)
% Por ejemplo multiplicar y dividir por el conjudado de 1-cos(x), quedando
% 1-cos(x)^2 = sen(x)^2 quedando la funcion 
% fb(x) = (sin(x))^2/((x).^2.*(1+cos(x))) y de esta
% forma evitaremos los problemas anteriormente mencionados.
f = @(x) (1 - cos(x))./(x.^2);
fb = @(x) ((sin(x)).^2)./((x).^2.*(1+cos(x)));
% C) ploteos en tres intervalor, utiilizar paso h = (b-a)/100 para la
% discretizacion

% defino los intervalos
% x = a : ((b-a)/100) : b
x1 = -5e-2 : 1e-3 : 5e-2;
x2 = -5e-3 : 1e-4 : 5e-3;
x3 = -5e-4 : 1e-5 : 5e-4;

% grafico
subplot(3, 1, 1), plot(x1, f(x1), 'b', x1, fb(x1), 'g'),
subplot(3, 1, 2), plot(x2, f(x2), 'k', x2, fb(x2), 'y'),
subplot(3, 1, 3), plot(x3, f(x3), 'r', x3, fb(x3), 'c'), grid on;

% Rapidamente puedo ver que a medida que me acerco a x=0 la funcion f(x) no
% se representa adecuadamente los valores de la verdadera funcion debido
% a los errores ya mencionados.
% Por el contrario, la funcion redefinida muestra una mejor aproximacion a
% la funcion real por lo que que el error es mas pequeño que la funcion
% original.
%% Ejercicio 2
% Defino las matrices asociadas al SEL Ax = b, la tolerancia y las
% iteraciones maximas
clear, clc
A = [10 -1 1 0 0 0; -1 10 -1 1 0 0; 1 -1 10 -1 1 0; 0 1 -1 10 -1 1; 0 0 1 -1 10 -1; 0 0 0 1 -1 10];
b = [5 5 5 5 5 5];
tol = 1e-9;
ITMAX = 30;

% Tomo un X0

X0 = [1 1 1 1 1 1]';
disp('Metodo de jacobi')
[sol_jacobi, iter_jacobi] = Jacobi(A, b, X0, tol, ITMAX);
disp('Iteraciones del metodo:')
disp(iter_jacobi)
disp('Soluciones del metodo:')
disp(sol_jacobi)

disp('Metodo de Gauss-Seidel')
[sol_GS, iter_GS] = GaussSeidel(A, b, X0, tol, ITMAX);
disp('Iteraciones del metodo:')
disp(iter_GS)
disp('Soluciones del metodo:')
disp(sol_GS)

% a) Converge mas rapido el metodo de Gauss Seidel
% b) Calcular residuales r = b - b* debe ser aprox cero
Error_Jacobi = b - A*sol_jacobi;
Error_GS = b - A*sol_GS;

disp('Error de Jacobi')
disp(Error_Jacobi)
disp('Error de GS')
disp(Error_GS)

disp('Ambas aproximaciones se verifican')
% c) Puedo afirmar la converfencias de los metodos utilizados por las
% caracteristicas propias de la matriz A que utilizo en el SEL.
% La matriz A es cuadrada, diagonalmente dominante puedo saber que los
% metodos convergen a las soluciones del SEL Ax = b para cualquier vector
% inicial X0.
disp('Compruebo que es diagonalmente dominante')
DD = diagdom(A);
if DD == 1
    disp('Es diagonalmente dominante')
else
    disp('No es diagonalmente dominante')
end
%% Ejercicio 3
clear, clc

% PVI
% V =10, RC= 1, V0 =5
% Vc' = f,
% f = (V - Vc)/RC
% f = 10 - Vc

f = @(t, Vc) (10 - Vc);
V0 = 5;
xi = 0;
xf = 5;
yi = 0;
yf = 10;
% a) graficar con campodirec
CampoDirec(xi, xf, yi, yf, f)

% b) utilizar un meotodo para aporximar numericamente la evolucion de la
% tension del capacitor para n =5 10 20 con la cond inicial V0 =5

n = [5 10 20];
for i=1:3
    [t,y] = Euler(f,xi,xf,V0,n(i));
    subplot(1,3,i), plot(t,y,'r'), grid on
    xlabel('Tiempo [s]') 
    ylabel('Voltaje Capacitor [V]')
end
% A medida que n aumenta la aproximacion de EUler es mas precisa
% c) El resultado era esperable, la tension en el capacitor evoluciona
% hasta alcanzar el valor de la tension de la fuente V = 10V