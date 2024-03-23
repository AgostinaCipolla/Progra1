program guia3Ejercicio4;
var
  N,i,ContPar:byte;
  PrimerNumero,SegundoNumero,Diferencia:integer;
begin
 Diferencia:=0;
 ContPar:=0;
     writeln('ingrese la cantidad de numeros enteros a ingresar');
     readln(N);
     writeln('ingrese el primer numero entero');
     readln(PrimerNumero);
     for i:=1 to (N-1) do
       begin
         writeln('ingrese el segundo numero entero');
         readln(SegundoNumero);
           if (PrimerNumero-SegundoNumero)>Diferencia then
            begin
             Diferencia:=PrimerNumero-SegundoNumero;
             ContPar:=i ;
            end;
         PrimerNumero:=SegundoNumero;
       end;
 writeln('La maxima diferencia es ' , diferencia , ' y corresponde al par ' , ContPar);
readln();
end.

