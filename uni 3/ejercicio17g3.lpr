program ejercicio17g3;
var
  Archivo:text;
  Nombre,nombremax:string[8];
  N,i:byte;
   acumdesc,PrecioTotal,precio:real;
   promo,car:char;
   max,contdesc,solooferta:integer;
begin
  max:=-9999;
  solooferta:=0;
  assign(Archivo,'ejercicio17g3.txt');
  reset(Archivo);
     while NOT eof(Archivo) do
        begin
          contdesc:=0;
          acumdesc:=0;
          PrecioTotal:=0;
        readln(Archivo,Nombre, N);
          for i:=1 to N do
            begin
            readln(Archivo,precio,car,promo);
                if promo='S' then
                begin
               PrecioTotal:= PrecioTotal + (precio*0.9);
               acumdesc:=acumdesc+ (precio*0.1);
               contdesc:=contdesc+1;
								end
								else
                PrecioTotal:= PrecioTotal + precio;
						end;
          if contdesc=N then
           solooferta:=solooferta+1;
          writeln('el precio final es ' , preciototal:3:2 , ' y el descuento total ' , acumdesc:3:2);
          if contdesc>max then
          begin
           nombremax:=nombre;
					max:=contdesc;
          end;
				end;
writeln('el cliente que compro mas articulos en oferta es ' , nombremax);
writeln('los clientes que compraron solo arti en oferta son ' ,solooferta);
close (Archivo);
readln();
end.

