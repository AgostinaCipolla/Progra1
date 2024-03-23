program guia3Ejercicio6;
var
  ContRetiro:byte;
  Movimiento:char;
  Deposito,Saldo,Retiro:real;
begin
   ContRetiro:=0;
    writeln('ingrese su saldo inicial');
    readln(Saldo);
    writeln('Ingrese el movimiento a realizar D=deposito R=retir F=fin de datos');
    readln(Movimiento);  Movimiento:=upcase(Movimiento);
       while Movimiento<>'F' do
         begin
           if Movimiento='D' then
             begin
             writeln('ingrese el saldo a depositar');
             readln(Deposito);
             Saldo:= Saldo + Deposito;
             end
           else
             begin
               writeln('ingrese el monto a retirar');
               readln(Retiro);
                    if Retiro>Saldo then
                     begin
                     writeln('Su saldo es insuficiente para realizar este retiro');
                     ContRetiro:=ContRetiro + 1;
                     end
                    else
               Saldo:= Saldo - Retiro;
             end;
         writeln('Ingrese el movimiento a realizar D=deposito R=retir F=fin de datos');
         readln(Movimiento);  Movimiento:=upcase(Movimiento);
         end;

writeln('el saldo que tiene es $' ,Saldo:3:2);
writeln('no pudo retirar dinero ' , ContRetiro , ' veces');
readln();
end.

