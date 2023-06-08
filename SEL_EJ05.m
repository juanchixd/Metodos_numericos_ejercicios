%{
Ejercicio: SEL_Ej05
Author: Juan Gonzalez
juangonzalez.com.ar
%}
A1 = [4 1; 12 2];
A2 = [0 1 1; -1 2 -4; 2 -5 1];
A3 = [eps 1; 0 1];
A4 = hilb(5);
b1 = ones(2, 1);
b2 = ones(3, 1);
b3 = ones(2, 1);
b4 = ones(5, 1);

fprintf("Soluciones exactas: \n")
x1_E = A1\b1;
x2_E = A2\b2;
x3_E = A3\b3;
x4_E = A4\b4;
disp(x1_E);
disp(x2_E);
disp(x3_E);
disp(x4_E);

fprintf("Soluciones con gauss: \n")
x1_G = Gauss(A1,b1);
x2_G = Gauss(A2,b2);
x3_G = Gauss(A3,b3);
x4_G = Gauss(A4,b4);
disp(x1_G);
disp(x2_G);
disp(x3_G);
disp(x4_G);

fprintf("Vector residual: \n")
fprintf("Primer sistema A1*x1 = b1\n")
r1 = b1-A1*x1_E;
n1_1 = normap(r1, 1);
n1_2 = normap(r1, 2);
n1_inf = normap(r1, inf);
fprintf("P=1 : %s \n", num2str(n1_1))
fprintf("P=2 : %s \n", num2str(n1_2))
fprintf("P=inf : %s \n", num2str(n1_inf))

fprintf("Segundo sistema A2*x2 = b2\n")
r2 = b2-A2*x2_E;
n2_1 = normap(r2, 1);
n2_2 = normap(r2, 2);
n2_inf = normap(r2, inf);
fprintf("P=1 : %s \n", num2str(n2_1))
fprintf("P=2 : %s \n", num2str(n2_2))
fprintf("P=inf : %s \n", num2str(n2_inf))

fprintf("Segundo sistema A3*x3 = b3\n")
r3 = b3-A3*x3_E;
n3_1 = normap(r3, 1);
n3_2 = normap(r3, 2);
n3_inf = normap(r3, inf);
fprintf("P=1 : %s \n", num2str(n3_1))
fprintf("P=2 : %s \n", num2str(n3_2))
fprintf("P=inf : %s \n", num2str(n3_inf))

fprintf("Segundo sistema A4*x4 = b4\n")
r4 = b4-A4*x4_E;
n4_1 = normap(r4, 1);
n4_2 = normap(r4, 2);
n4_inf = normap(r4, inf);
fprintf("P=1 : %s \n", num2str(n4_1))
fprintf("P=2 : %s \n", num2str(n4_2))
fprintf("P=inf : %s \n", num2str(n4_inf))