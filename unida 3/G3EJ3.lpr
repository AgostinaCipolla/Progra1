program G3EJ3;
var
  i,N,cont:word;
  nro,numero:integer;
begin
     cont:=0;
     writeln('ingrese la cantidad de nros');
     readln(N);
     writeln('ingrese el primer nro');
     readln(nro);

     for i:=2 to N do
         begin
           writeln('ingrese un numero');
           readln(numero);
           if nro<numero then
              cont:=cont+1;
         end;
writeln('la cantidad de veces q un nro supera al anterior es ' , cont);


readln();
end.

