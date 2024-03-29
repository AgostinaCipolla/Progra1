program guia3Ejercicio17;
Const
  DESCUENTO=0.1;
var
  Archivo:text;
  i,N:byte;
  Nombre:string[12];
  Valor,TotalDesc,PrecioTotal:real;
  car,Promo:char;
begin
  max:=-999;
  assign(Archivo,'ejercicio17g3.txt');
  reset(Archivo);
  read(Archivo,Nombre);
    while Nombre<>'***' do
       begin
      TotalDesc:=0;
      PrecioTotal:=0;
      ContS:=0;
         readln(Archivo,N);
           for i:=1 to N do
             begin
               readln(Archivo,Valor,car,Promo);
                 if Promo='S' then
                     begin
                       TotalDesc:=TotalDesc + (Valor*DESCUENTO);
                       Valor:= Valor - (Valor*DESCUENTO);
                       PrecioTotal:= PrecioTotal + Valor;
                       ContS:=ContS + 1;
                     end
                 else
               PrecioTotal:= PrecioTotal + Valor;
             end;
    writeln('el monto total de la venta de ' ,nombre, ' es $' , PrecioTotal:3:2 , ' y el descuento total que tuvo es ' ,TotalDesc:3:2);
    read(Archivo,Nombre);
       end;

close(Archivo);
readln();
end.

