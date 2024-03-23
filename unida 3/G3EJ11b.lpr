program G3EJ11b;
var
  arch:text;
  nom:string[12];
  nota1,nota2,nota3,prom,porcentaje:real;
  contdesa,cont:word;
begin
  assign(arch,'g3ej11b.txt'); reset(arch);
  contdesa:=0;
  cont:=0;
  while not eof(arch) do
     begin
       cont:=cont+1;
       readln(arch,nom,nota1,nota2,nota3);
        prom:=(nota1+nota2+nota3)/3;
          if prom<4 then
           begin
             writeln('el alumno ' , nom , ' desaprobo');
             contdesa:=contdesa+1;
           end
          else
              writeln('el alumno ' , nom , ' aprobo');
     end;
porcentaje:=(contdesa*100)/cont;
writeln('el porcentaje de alumnos desaprobados es' , porcentaje:6:2);





close(arch);
readln();
end.

