%{
Ejercicio: EDO_EJ01
Author: Juan Gonzalez
juangonzalez.com.ar
%}
%% a
z = 0:1/50:4; 
f = @(t, y) (t - y)/2;
sol1 = -3*exp(-z/2)+z-2;
sol2 = -2*exp(-z/2)+z-2;
sol3 = -1*exp(-z/2)+z-2;
sol4 = 0*exp(-z/2)+z-2;
CampoDirec(0,4,0,4,f), hold on; 
plot(z, sol1, 'g'), grid on;
plot(z, sol2, 'g'), grid on;
plot(z, sol3, 'g'), grid on;
plot(z, sol4, 'g'), grid on;
%% b
z = 0:1/50:4; 
f = @(t, y) 1 - exp(t);
sol1 = exp(-z)+z-1;
sol2 = exp(-z)+z-0;
sol3 = exp(-z)+z+1;
sol4 = exp(-z)+z+2;
CampoDirec(0,4,0,4,f), hold on; 
plot(z, sol1, 'g'), grid on;
plot(z, sol2, 'g'), grid on;
plot(z, sol3, 'g'), grid on;
plot(z, sol4, 'g'), grid on;