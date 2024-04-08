program G3EJ24;
var
  arch,archSalida:text;
  car1,car2,i:char;
begin
  assign(arch,'g3ej24.txt'); reset(arch);
  assign(archSalida,'g3ej24salida.txt'); rewrite(archSalida);
        read(arch,car1);
   while (car1<>'.') do
      begin
        read(arch,car2);
        if (car1 in ['a'..'z']) and (car2 in ['0'..'9']) then
           begin
             for i:='1' to car2 do
                write(archSalida,car1);
             read(arch,car2);
           end
        else
            write(archSalida,car1);
        car1:=car2
      end;

close(arch);
close(archSalida);
end.

