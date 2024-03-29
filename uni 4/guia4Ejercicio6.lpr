program guia4Ejercicio6;
function aleatorio(a,b:word):word;
begin
  randomize;
  aleatorio:= a + (random(b-a+1));
end;
var
  arch:text;
  a,b:word;
begin
    assign(arch,'ejercicio6g4.txt');
    reset(arch);
     while NOT eof(arch) do
     begin
     readln(arch,a,b);
      writeln('el numero aleatorio entre ' , a , ' y ' , b , ' es ' , aleatorio(a,b));
     end;

close(arch);
readln();
end.
