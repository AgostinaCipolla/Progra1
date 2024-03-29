program guia4Ejercicio4;
function potencia(x,n:byte):word;
var
i:byte;
res:word;
begin
   res:=1;
      for i:=1 to n do
       res:=res*x;
potencia:=res;
end;

var
x,n:byte;
arch:text;
begin
  assign(arch, 'ejercicio22g4.txt');
  reset(arch);
      while NOT eof(arch) do
        begin
          readln(arch,x,n);
          writeln('la potencia es: ' , potencia(x,n));
        end;

close(arch);
readln();
end.

