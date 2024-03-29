program guia4Ejercicio2;

function Factorial(N:word):integer;
var
 producto,i:integer;
begin
   producto:=1;
   for i:=N downto 1 do
      producto:=producto*1*i;
Factorial:=producto;
    end;
var
 num:word;
begin

writeln('ingrese un numero para calcular su factorial');
readln(num);

   if num<>0 then
     writeln('el factorial del numero ' , num , ' es ' , Factorial(Num))
    else
      writeln('el factorial del numero es 1');

readln();
end.

