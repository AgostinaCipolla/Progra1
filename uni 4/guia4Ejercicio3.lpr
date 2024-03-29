program guia4Ejercicio3;
function Suma(N:word):word;
var
  i,sum:word;
begin
  sum:=0;
  for i:=1 to N do
    Sum:=Sum+i;
   Suma:=Sum;
end;
var
  N:word;
begin
  writeln('ingrese la cantidad de nros naturales');
  readln(N);
  writeln('la suma es' , Suma(N));
readln();
end.

