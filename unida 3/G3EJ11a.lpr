program G3EJ11a;
var
  arch:text;
  saldoInicial,monto:real;
  mov:char;
  cont:word;
begin
cont:=0;
      assign(arch,'g3ej11a.txt'); reset(arch);
      readln(arch,saldoInicial);
      while not eof(arch) do
       begin
         readln(arch,mov,monto);
            if mov='D' then
               saldoInicial:=saldoInicial+monto
            else
              if mov='R' then
                 begin
                   if monto<saldoInicial then
                      saldoInicial:=saldoInicial-monto
                   else
                     begin
                       writeln('el saldo es insuficiente para realizar ese retiro');
                       cont:=cont+1;
                     end;
                 end;

       end;
writeln('el saldo final es ' , saldoInicial:6:2);
writeln(cont , ' veces no pudo retirar dinero');
close(arch);
readln();
end.

