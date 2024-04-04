program E17G3;
var
  arch:text;
  nombre:string[10];
  cantArti,i:word;
  promo,car:char;
  desc,precio,precioTotaldesc,precioTotalnodesc,total:real;
begin
  assign(arch,'EJ17G3.txt'); reset(arch);

   while not eof(arch) do
      begin
         readln(arch,nombre,cantArti);
          precioTotaldesc:=0;
          precioTotalnodesc:=0;
          total:=0;
         for i:=1 to cantArti do
             begin
               readln(arch,precio,car,promo); promo:=upcase(promo);

               if promo='S' then
                begin
                  desc:=precio*0.1;
                  precio:=precio-desc;
                  precioTotaldesc:=precioTotaldesc+precio;
                  total:=total+precio;
                end
               else
                begin
                  precioTotalnodesc:=precioTotalnodesc+precio;
                  total:=total+precio;
                end;

             end;
         writeln('para ' , nombre);
         writeln('el precio total con descuento es ' , precioTotaldesc:6:2);
         writeln('el precio total SIN descuento es ' , precioTotalnodesc:6:2);
         writeln('el precio final a pagar ' , total:6:2);
      end;


close(arch);
readln();
end.

