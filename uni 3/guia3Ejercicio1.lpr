program guia3Ejercicio1;
var
  N,i,PrimeraPosicion,ContMax:word;
  Max,Numero,Impar:integer;
begin
   writeln('ingrese la cantidad de numeros enteros que va a ingresar');
   readln(N);
   Max:=-9999;
   Impar:=9999;
   ContMax:=0;
   for i:=1 to N do
     begin
       writeln('ingrese un numero');
       readln(Numero);
        if Numero>Max then
           begin
             Max:=Numero;
             PrimeraPosicion:=i;
           end
        else
               if Max=Numero then
                  ContMax:=ContMax + 1
               else
                 if (Numero MOD 2 = 1) then
                    Impar:= Numero;

      end;


writeln('El numero maximo es ' , Max , ' aparece por primera vez en la posicion ' , PrimeraPosicion , ' tiene ' , ContMax , ' apariencias');
   if Impar=9999 then
      writeln('ninguno de los numeros ingresados es impar')
   else
      writeln('el minimo de los numero impares es ' , Impar);
readln();
end.

