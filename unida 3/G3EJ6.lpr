program G3EJ6;
var
  saldoInicial,dep,ret:real;
  mov:char;
  cont:word;
begin
cont:=0;
     writeln('ingrese el saldo inicial de la cuenta');
     readln(saldoInicial);
     writeln('ingrese el movimiento D-deposito R-retiro F-fin');
     readln(mov);
     mov:=upcase(mov);

     while mov<>'F' do
       begin
         if mov='D' then
            begin
              writeln('ingrese el monto a depositar');
              readln(dep);
              saldoInicial:=saldoInicial + dep;
            end
          else
              if mov='R' then
                 begin
                   writeln('ingrese el monto a retirar');
                   readln(ret);
                       if ret<saldoInicial then
                          saldoInicial:=saldoInicial - ret
                       else
                          begin
                             cont:=cont+1;
                             writeln('el valor ingresado supera el monto del saldo');
                          end;
                 end;

        writeln('ingrese el movimiento D-deposito R-retiro F-fin');
        readln(mov);
        mov:=upcase(mov);
       end;
writeln('el saldo final es ' , saldoInicial:6:2);
writeln('no pudo retirar dinero ' , cont , ' veces');
readln();
end.

