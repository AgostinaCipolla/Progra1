program G1EJ6;
var
  N,ultimasTres,M,posicionCentenas,posicion:integer;
begin
  writeln('ingrese un numero entero de mas de 3 cifras');
  readln(N);
  ultimasTres:= N div 1000;
  writeln('el numero ' , N , ' sin las ultimas 3 cifras es ' , ultimasTres);
  writeln('ingrese un numero entero de mas de 3 cifras');
  readln(M);
  posicionCentenas:= M mod 1000;
  posicion:= posicionCentenas div 100;
  writeln('el numero que esta en la posicion de las centenas es ' , posicion);
readln();
end.

