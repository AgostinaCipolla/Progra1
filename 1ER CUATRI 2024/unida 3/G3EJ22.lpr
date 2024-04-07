program G3EJ22;
var
  arch:text;
  car1:char;
  contVocal,maxVocal:integer;
  pal,palMax:string[20];
begin
contVocal:=0;
maxVocal:=-9999;
     assign(arch,'g3ej22.txt'); reset(arch);
     pal:=' ';
     while not eof(arch) do
       begin

        read(arch,car1);
          if (car1<>' ') then
             begin
               pal:=pal+car1;
               if (car1='a') or (car1='e') or (car1='i') or (car1='o') or (car1='u') then
                 contVocal:=contVocal+1;
             end
          else
             begin
              if contVocal>maxVocal then
                begin
                 maxVocal:=contVocal;
                 palMax:=pal;
                end;
             contVocal:=0;    {reinicio el contador contvolca y pal porque si habia blanco es otra palabra nueva}
             pal:=' ';
             end;

       end;
  if contVocal>maxVocal then
    palMax:=pal;
writeln(palMax);
close(arch);
readln();
end.

