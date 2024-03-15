program G1EJ2;
const
  a1=1;
var
  K,terminoK,terminoK1: integer;
begin
  writeln('ingrese el valor de k');
  readln(K);

  terminoK:= a1+ (3* (K-1));
  writeln('El termino kesimo es ' , terminoK);

  terminoK1:= a1 + (3*k);
  writeln('el termino k + 1 es ' , terminoK1);
  writeln('la diferencia entre los terrminos k y k+1 es ' , terminoK-terminoK1);
readln();
end.

