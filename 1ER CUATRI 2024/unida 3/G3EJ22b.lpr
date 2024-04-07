program G3EJ22a;
var
  arch,archSalida:text;
  car1:char;
  contLetra:integer;
  pal:string[20];
begin
contLetra:=0;
     assign(arch,'g3ej22.txt'); reset(arch);
     assign(archSalida,'g3ej22salida.txt'); rewrite(archSalida);
     pal:=' ';
     while not eof(arch) do
       begin

        read(arch,car1);
          if (car1<>' ') then
             begin
               pal:=car1 + pal;
               contLetra:=contLetra+1;
             end
        else
         begin
          if contLetra>=4 then
                 writeln(archSalida,pal);
                 contLetra:=0;    {reinicio el contador contvolca y pal porque si habia blanco es otra palabra nueva}
                 pal:=' ';
         end;

       end;
   if contLetra>=4 then                  //agrego este if porque sino no tiene en cuenta la ultima palabra porque llega al fin de archivo y sale del ciclo sin contarla
       writeln(archSalida,pal);
close(arch);
close(archSalida);
readln();
end.

