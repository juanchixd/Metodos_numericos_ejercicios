%{
Ejercicio: SENL_EJ02
Author: Juan Gonzalez
juangonzalez.com.ar
%}
pol = [816 -3835 6000 -3125];

x1 = 1.4:1/100:1.7;

plot(x1,polyval(pol,x1)), grid on, axis on

f = @(x) 816*x^3-3835*x^2+6000*x-3125 ;
fd = @(x) 2448*x^2-7670*x+6000;
tol = 1e-3;
sol = [NewtonRaphson(f,fd,1.45,tol,15); NewtonRaphson(f,fd,1.55,tol,15); NewtonRaphson(f,fd,1.65,tol,15)];

error_absoluto = roots(pol) - sol;
disp(error_absoluto)