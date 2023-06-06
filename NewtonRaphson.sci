function x = NewtonRaphson(fnom,fpnom,x0,tol,itmax)
// Método de Newton-Raphson
// ENTRADA
// fnom   : nombre función que define la ecuación 
// fpnom  : nombre de la derivada de la función fnom 
// x0     : estimación inicial
// tol    : tolerancia
// itmax  : número máximo de iteraciones
// SALIDA
// x      : raíz aproximada
//
// Autores: Javier Signorelli - Javier Sorribas (2010)
// Modifcacion: Luciano Ponzellini Marinelli (2022)

printf('Método iterativo de Newton-Raphson\n\n')
printf('Iter       x              f(x)              Error\n')

iter= 1;

while 1
   fx = fnom(x0);
   fpx = fpnom(x0);
   x = x0 - fx/fpx;
      
   mprintf('%i   %f   %f   %f \n',iter,x,fnom(x),abs(x-x0))
   
   if abs(x-x0) <= tol && abs(fnom(x)) <= tol 
	  	mprintf('Se alcanzó la tolerancia. \n\n')
		mprintf('Resultado final:\n Raíz aproximada = %f \n',x)
      return
   end
   
   x0 = x;
   iter = iter +1;
   
   if iter > itmax 
	   disp('Número de iteraciones máximo alcanzado. \n\n')
    mprintf('Resultado parcial:\n Raíz aproximada = %f \n',x)
   	break
   end
end

endfunction
