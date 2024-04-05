program G3EJ17;
var
  arch:text;
  nombre,nombreMax:string[10];
  cantArti,i:word;
  promo,car:char;
  soloOferta:boolean;
  precio,precioTotaldesc,precioTotalnodesc,total,max,articNoOferta,articOferta:real;
begin
  assign(arch,'g3ej17.txt'); reset(arch);
  max:=-9999;
   while not eof(arch) do
      begin
         readln(arch,nombre,cantArti);
          precioTotaldesc:=0;
          precioTotalnodesc:=0;
          total:=0;
          articOferta:=0;
          articNoOferta:=0;
          soloOferta:=false;
         for i:=1 to cantArti do
             begin
               readln(arch,precio,car,promo); promo:=upcase(promo);

                 if promo='S' then
                  begin
                    precioTotaldesc:=precioTotaldesc+(precio*0.9);
                    articOferta:=articOferta+1;
                  end
                else
                  begin
                    precioTotalnodesc:=precioTotalnodesc+precio;
                    articNoOferta:=articNoOferta+1;
                    soloOferta:=true;
                  end;

             end;
         total:=precioTotaldesc+precioTotalnodesc;
         writeln('para ' , nombre);
         writeln('el precio total con descuento es ' , precioTotaldesc:6:2);
         writeln('el precio total SIN descuento es ' , precioTotalnodesc:6:2);
         writeln('el precio final a pagar ' , total:6:2);
       if articOferta>max then
        begin
          nombreMax:=nombre;
          max:=articOferta;
        end;
       if soloOferta=false then
        writeln('el cliente ' , nombre , ' compro solo articulos en oferta');
      end;

writeln('el cliente q compro mas articulos en oferta fue ' , nombreMax);
close(arch);
readln();
end.
