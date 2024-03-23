program guia3Ejercicio6;
var
  Archivo:text;
  ContRetiro:byte;
  Movimiento:char;
  Monto,Saldo:real;
begin
   assign(Archivo, 'ejercicio11g3.txt');
   reset(Archivo);
   readln(Archivo,Saldo);
   ContRetiro:=0;
       while NOT eof(Archivo) do
         begin
          readln(Archivo,Movimiento,Monto);
           if Movimiento='D' then
             begin
             Saldo:= Saldo + Monto;
             end
           else
             begin
                    if Monto>Saldo then
                     begin
                     writeln('Su saldo es insuficiente para realizar este retiro');
                     ContRetiro:=ContRetiro + 1;
                     end
                    else
               Saldo:= Saldo - Monto;
             end;
         end;

writeln('el saldo que tiene es $' ,Saldo:3:2);
writeln('no pudo retirar dinero ' , ContRetiro , ' veces');
readln();
end.

