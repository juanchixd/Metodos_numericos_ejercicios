%{
Ejercicio: EDO_EJ02
Author: Juan Gonzalez
juangonzalez.com.ar
%}
%%
% y' = -t*y, y(0) = 1, 0<=t<=5
te = 0:1/100:5;
fa = @(t,y) - t * y;
fe = exp(-((te).^2)/2);
a = 0;
b = 5;
y0 = 1;
n = 25;
[ta,ya] = Euler(fa,a,b,y0,n);
plot(ta,ya,'.r'), hold on, 
plot(te,fe,'g'), grid on;
%%
%y' = 1/(1+t^2)-2*y^2, y(0) = 0, 0<=t<=10
te = 0:1/100:10;
fa = @(t,y) 1/(1+t^2) - 2*y^2;
fe = (te) ./ (1 + (te).^2);
a = 0;
b = 10;
y0 = 0;
n = 25;
[ta,ya] = Euler(fa,a,b,y0,n);
plot(ta,ya,'.r'), hold on, 
plot(te,fe,'g'), grid on;
%% c
% y' = 0.25*y*(1-(1/20)*y), y(0) = 1, 0<=t<=20
te = 0:1/25:20;
fa = @(t,y) 0.25*y*(1-(1/20)*y);
fe = 20 ./ (1 + 19*exp(-(te)./4));
a = 0;
b = 20;
y0 = 1;
n = 25;
[ta, ya] = Euler(fa,a,b,y0,n);
plot(ta,ya,'.r'), hold on, 
plot(te,fe,'g'), grid on