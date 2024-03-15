program G2EJ7;
const
  iva=1.21;
var
  genero,talle:char;
  valorBase:real;
  cantidad:integer;
begin
      writeln('ingrese genero hombre o mujer H o M');
      readln(genero);
      genero:=upcase(genero);
      writeln('ingrese el talle S-M-L-X');
      readln(talle);
      talle:=upcase(talle);
      writeln('ingrese la cantidad de remeras a comprar');
      readln(cantidad);

      if genero='H' then
         valorBase:=1000*iva
      else
         valorBase:=1200*iva;

      if ((talle='S') and (genero='H')) or ((talle='X') and (genero='M')) then
         valorBase:=valorBase*0.95;

      if cantidad>=12 then
         valorBase:=valorBase*0.93;

writeln('el valor final de la compra es ' ,  valorBase*cantidad:6:2);

readln();
end.

