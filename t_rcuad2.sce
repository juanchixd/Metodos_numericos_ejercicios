//script para ejecutar rcuad2.sci
//luciano ponzellini marinelli (2022)

exec('rcuad2.sci',-1)
x0=1; //defino la aprox inicial
tol=1e-5; //defino la tol inicial
r=rcuad2(x0,tol)
