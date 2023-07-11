%% ejercicio 1
%a) en papel

%b) f(x) = x^2 - 10000000,000001*x + 1 = 0
disp("Siendo el polinomio de orden 2 x.^2 - 10000000.000001*x + 1")
disp('')
%f = @(x) x.^2 - 10000000.000001*x + 1;
pol = [1 -1000000.000001 1];
disp('Usando Cuad_A.m')
x = Cuad_A(pol);

%c) usar cuad_mejor.m
%raices con Cuad_mejor.m
disp('Usando Cuad_mejor.m')
x_mejor = Cuad_mejor(pol);
format shortEng
%d) Comparar los erroes entre ambas implementaciones y obtener
%conclusiones. Sugerencia, usar roots.
r = roots(pol);
Data = [r(1),    x(1),      (r(1)-x(1)),    x_mejor(1),    (r(1)-x_mejor(1))
        r(2),    x(2),      (r(2)-x(2)),    x_mejor(2),    (r(2)-x_mejor(2))];
format long
table = array2table(Data, 'VariableNames', ...
    {'roots', 'cuad', 'e = r-cuad', 'cuad_mejor', 'e = r-cuad_m'}, ...
    'RowNames',{'x1', 'x2'});
disp(table)

% La diferencia que se da entre cuad y cuad_mejor es que en la ultima se
% evita la resta de b. Ya que cuando b es muy grande al elevarlo al
% cuadrado se hace mas grande y si restamos un numero pequeño (4*a*c) en
% comparación, el resultado de la raiz del discriminante es practicamente
% el valor absoluto de b. Entonces en el caso en que le restamos b al
% discriminante o viceversa se produce un corrimiento de mantisa ya que se
% restan dos numeros muy parecidos y se introduce un error de redondeo.
% El error mencionado es el que se refleja cuando hacemos e = r(2) - x2

%% Ejercicio 2
clear, clc
% Considerando la matriz:
%
%   -2 1 0 0 0 0
%   1 -2 1 0 0 0
%   0 1 -2 1 0 0
%   0 0 1 -2 1 0
%   0 0 0 1 -2 1
%   0 0 0 0 1 -2
disp('Sea la matriz A =')
A = [-2 1 0 0 0 0; 
     1 -2 1 0 0 0; 
     0 1 -2 1 0 0; 
     0 0 1 -2 1 0; 
     0 0 0 1 -2 1; 
     0 0 0 0 1 -2];
disp(A)

%a) Encontrar la factorizacion LU de A, siendo L triangular unitaria
%inferior y U triangular superior. ¿Fue necesario el pivoteo en este caso?
% Utilizo la factorizacion LU a traves del comando existente en matlab para
% esto
[L, U, P] = lu(A);
disp('Matriz triangular inferior: ');
disp(L)
disp('Matriz triangular superior: ');
disp(U)
disp('Matriz permutación: ');
disp(P)
% Dado que la matriz P (permutacion) no tiene ninguna fila ni columna
% intercambiada entonces no hay necesidad de utilizar el pivoteo parcial o
% escalado para minimizar ls errores de redondeo.

% b) Usar la factolizacion LU de A para resolver el sistema Ax = b, siendo
% b = 1
%     0
%     0
%     0
%     0
%     1
b = [1 0 0 0 0 1]';

%Como A permite una factorizacion LU, Ax = b se resuelve Ly = b Ux = y
y = L\b;
x = U\y;
disp('Solución del sistema Ax = b');
disp(x)

% c) Calcular el vector residual. ¿Hubo errores numericos? ¿De que tipo?

% Para hallar el error se compara b con el vector dato y el vector que
% obtendria al hacer Ax

r = b - (A*x);
disp(r)
% Este metodo de resolucion es un metodo iterativo, no es directo por lo 
% que el proceso devuelve una solucion aproximada que se ve afectada 
% por errores de truncamiento. 

%% Ejercicio 3
clear, clc

%Defino la constantes que me da el enunciado
Ta = 20;
T0 = 100;
K = 0.034657;
a = 0;
b = 240;

fp = @(t, T) (-K*(T-Ta));

%aproximaciones por Euler 
[t0, y0] = Euler(fp, a, b, T0, 3); % n = 3
[t1, y1] = Euler(fp, a, b, T0, 6); % n = 6
[t2, y2] = Euler(fp, a, b, T0, 12); % n = 12
[t3, y3] = Euler(fp, a, b, T0, 24); % n = 24

%Ploteo
plot(t0, y0, 'go'), grid on, hold on
plot(t1, y1, 'bx'), hold on,
plot(t2, y2, 'k*'), hold on,
plot(t3, y3, 'cs'), hold on,

% asintotica a 20 grados
% b) Considerando que  la sol exacta es Ta + (T0 -Ta) e^-Kt,
% graficarla y lax aproximadas para los pasos de h = 3, 6, 12, 24
fsol = @(t, y) (Ta + (T0 - Ta).*exp(-K.*t));
tt = a : 1/100 : b;
plot(tt, fsol(tt), 'm')

title('Ley de enfriamiento de Newton')
axis([0 240 0 100])
legend('h=3', 'h=6', 'h=12', 'h=24', 'sol. exacta')
xlabel({'Tiempo', '(en minutos)'});
ylabel({'Temperatura', '(en grados centigrados)'});
% c) El principio cero de la termodinamia afirma que limite cuando t tiende
% a infinito de la funcion T(t) es igual a una contantes. ¿El resultado
% numerico es consecuente con este principio?
% Si, es consecuente con este principio ya que a medida que se incrementa
% la variable temporal (le damos valores mas altos de t), el valor de la
% temperatura tiene a la temperatura ambiente (20°C para el caso de este
% enunciado).
