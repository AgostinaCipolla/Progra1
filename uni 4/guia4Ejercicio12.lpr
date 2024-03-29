program guia4Ejercicio12;
procedure Genera (cota:integer);
var
a,b,c:integer;
begin
 a:=1;
 b:=1;
 C:=0;
 write('1 1 ');
 while C<=cota do
   begin
     c:= a + b;

      if c<=cota then
        begin
          write(c, ' ' );
          a:=b;
          b:=c;
        end;
   end;
   writeln();
end;

var
  N,i,cota:integer;
begin
  writeln('ingrese la cantidad de cotas');
  readln(N);
  if N<>0 then
    for i:=1 to N do
     begin
      writeln('ingrese la cota entera positiva');
      readln(cota);
      writeln('Cota ' , i );
      genera(cota);
      writeln();
     end;
readln();
end.

