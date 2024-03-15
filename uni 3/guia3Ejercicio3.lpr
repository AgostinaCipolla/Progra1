program guia3Ejercicio3;
var
  N,i,ContSuperar:byte;
  Numero1,Numero2:integer;
begin
     ContSuperar:=0;
     writeln('ingrese la cantidad de numeros enteros a ingresar');
     readln(N);
     writeln('ingrese el primer numero');
     readln(Numero1);
     for i:=1 to (N-1) do
      begin
        writeln('ingrese un numero');
        readln(Numero2);
         if Numero2>Numero1 then
           begin
              Numero1:=Numero2;
              ContSuperar:= ContSuperar + 1 ;
           end;
      end;

writeln('un numero supera al anterior ' , ContSuperar , ' veces');
readln();
end.

