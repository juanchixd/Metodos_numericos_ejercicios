  // Script: ExpTaylor
  // Plotea como funcion de la cantidad de terminos n, 
  // el error relativo del Taylor de exp(x):
  // T(e^x,0) = 1 + x + x^2/2! +...+ x^n/n!
  //
  // 05.04.2015 (Sergio Preidikman)
  // 30.03.2022 (Luciano Ponzellini Marinelli) 
  
 clear, clc,
  nTerms = 50; 
  xx = [1  5  10  -1  -5  -10];
  
  for i=1:length(xx)
     x = xx(i);
     f = exp(x)*ones(nTerms,1);
     s = 1;
     term = 1;
     for k=1:nTerms
        term = x.*term/k;
        s = s + term;
        err(k) = abs(f(k) - s);
     end
     relerr = err'/exp(x)';
     subplot(2,3,i), plot(1:nTerms,log(relerr)), 
     ylabel('Error Relativo Suma Parcial'),
     xlabel('Orden Suma Parcial'),
     title(sprintf('x = %5.2f',x)),
  end
