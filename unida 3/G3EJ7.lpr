program G3EJ7;
var
  arch:text;
  nom:string[6];
  nota1,nota2,nota3:word;
  prom:real;
begin
     assign(arch,'g3ej7.txt'); reset(arch);

     while not eof(arch) do
        begin
            readln(arch,nom,nota1,nota2,nota3);
            prom:=(nota1+nota2+nota3)/3;
              if prom<4 then
                 writeln('el alumno ' , nom , ' tiene un promedio de ' , prom:6:2 , ' y su condicion es desaprobado')
              else
                 writeln('el alumno ' , nom , ' tiene un promedio de ' , prom:6:2 , ' y su condicion es aprobado');

        end;

close(arch);
readln();
end.

