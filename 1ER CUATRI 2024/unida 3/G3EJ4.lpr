program G3EJ4;
var
i,N,cont:word;
pri,seg,max:integer;
begin
max:=0;
   writeln('ingrese la cantidad de numeros N enteros');
   readln(N);
   writeln('ingrese  el primer numero');
   readln(pri);
      for i:=2 to N do
      begin
         writeln('ingrese  el segundo numero');
         readln(seg);
          if pri-seg>max then
           begin
             max:=pri-seg;
             cont:=i-1;
           end;
          pri:=seg;
      end;

    writeln('la maxima diferencia es ' , max , ' y corresponde al par ' , cont);





readln();
end.

