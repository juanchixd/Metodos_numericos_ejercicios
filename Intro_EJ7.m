%% Parte a

x = -3:1/100:3;
f1 = x.^3 - x - 1;
f2 = exp(-x) - x;
f3 = cos(2.*x) - sin(x);
f4 = x.*log(abs(x));

plot(x,f1,'r',x,f2,'g',x,f3,'b',x,f4,'m')

%% Parte b

x = -3:1/100:3;
f1 = x.^3 - x - 1;
f2 = exp(-x) - x;
f3 = cos(2.*x) - sin(x);
f4 = x.*log(abs(x));

subplot(2,2,1), plot(x,f1,'r');
subplot(2,2,2), plot(x,f2,'g');
subplot(2,2,3), plot(x,f3,'b');
subplot(2,2,4), plot(x,f4,'m');