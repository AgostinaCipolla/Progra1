program guia4Ejercicio5;
function determinante(a,b,c,d,e,f:integer):real;
var
  deltax,delta:integer;
begin
  if ((a*f)-(b*d))<>0 then
  begin
  deltax:=(c*e)-(b*f);
  delta:=(a*e)-(b*d);
  determinante:= deltax/delta;
  end
end;

var
  arch:text;
  a,b,c,d,e,f:integer;
begin
   assign(arch,'ejercicio5g4.txt');
   reset(arch);
     while NOT eof(arch) do
        begin
          readln(arch,a,b,c,d,e,f);
          writeln('el valor de x en el sistema es ' , determinante(a,b,c,d,e,f):3:0);
        end;

close(arch);
readln();
end.

