program G3EJ22c;
var
  arch:text;
  contIgual:word;
  pal,palCapi:string[20];
  car:char;
begin
contIgual:=0;
pal:='';
palCapi:='';
      assign(arch,'g3ej22c.txt'); reset(arch);

      while not eof(arch) do
         begin
         read(arch,car);
           if (car<>' ') then
            begin
              pal:=pal+car;
              palCapi:=car+palCapi;
            end
           else
           begin
            if pal=palCapi then
                 contIgual:=contIgual+1;

           pal:='';
           palCapi:='';
           end;
         end;
   if pal=palCapi then
      contIgual:=contIgual+1;
writeln('capicuas ' , contIgual);

close(arch);
readln();
end.

