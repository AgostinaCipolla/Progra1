program guia3Ejercicio11b;
var
  Archivo:text;
  Nombre:string[15];
  Nota1,Nota2,Nota3,prom,porcentajeAprobados:real;
  ContAprob,ContAlumno:byte;
begin
   assign(Archivo, 'ejercicio11bg3.txt');
   reset(Archivo);
   ContAprob:=0;
   ContAlumno:=0;
   read(Archivo,Nombre);
   while NOT eof(Archivo) do
     begin
        readln(Archivo,Nota1,Nota2,Nota3);
        prom:=(Nota1 + Nota2 + Nota3)/3;
         if prom<4 then
           writeln('el alumno ' , nombre , 'tiene como promedio ' , prom:3:2 , ' y su condicion es desaprobado')
         else
          begin
           writeln('el alumno ' , nombre , 'tiene como promedio ' , prom:3:2 , ' y su condicion es aprobado');
           ContAprob:=ContAprob + 1;
          end;
         ContAlumno:=ContAlumno + 1;
         read(Archivo,Nombre);
     end;
porcentajeAprobados:=(ContAprob/ContAlumno)*100;
writeln('el porcentaje de alumnos aprobados es ' , porcentajeAprobados:3:2 , '%');
readln();
end.

