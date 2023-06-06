function [Pk,iter] = PuntoFijo(Gnom,P0,tol,itmax)
// Datos
//   - Gnom: (string) función m-file que definen las  generarices
//   - P0: estimación inicial como vector fila (x_0,y_0)
//   - tol: tolerancia
//   - itmax: número iteraciones máximas
// Resultado
//   - Pk: aproximación solución
//   - iter: número iteraciones realizadas
//
// Autores: Javier Signorelli - Javier Sorribas (2010)
// Modifcacion: Luciano Ponzellini Marinelli (2022)

printf('Método iterativo de Punto Fijo\n\n')
printf('Iter     Pk     Qk\n')

iter = 0;
mprintf('%i    %f   %f\n',iter, P0)

while 1
//   Pk = eval(Gnom,P0);
   Pk = Gnom(P0);
   err = abs(norm(Pk-P0));
   relerr = err / (norm(Pk)+%eps);
   
   if(err < tol || relerr < tol)
	  	disp('Se alcanzó la tolerancia.')
		disp('Resultado final: ')
		mprintf('%f   %f\n',Pk),  break
   end
   
   if iter >= itmax 
	  disp('Número de iteracioneas máximo sobrepasado.'), break
   end
   
   
   iter = iter + 1;
   P0 = Pk;
   mprintf('%i    %f   %f\n', iter, Pk)
end 

endfunction

