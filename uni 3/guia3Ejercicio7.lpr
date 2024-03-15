program guia3Ejercicio7;
var
  Nombre:string;
  Nota1,Nota2,Nota3,prom,porcentajeAprobados:real;
  ContAprob,ContAlumno:byte;
begin
   ContAprob:=0;
   ContAlumno:=0;
   writeln('ingrese el primer nombre del alumno(*** para finalizar)');
   readln(Nombre);

   while Nombre<>'***' do
     begin
        writeln('ingrese las tres notas del alumno');
        readln(Nota1,Nota2,Nota3);
        prom:=(Nota1 + Nota2 + Nota3)/3;
         if prom<4 then
           writeln('el alumno ' , nombre , 'tiene como promedio ' , prom:3:2 , ' y su condicion es desaprobado')
         else
          begin
           writeln('el alumno ' , nombre , 'tiene como promedio ' , prom:3:2 , ' y su condicion es aprobado');
           ContAprob:=ContAprob + 1;

          end;
         ContAlumno:=ContAlumno + 1;
         writeln('ingrese nombre del alumno (*** para finalizar)');
         readln(Nombre);
     end;
porcentajeAprobados:=(ContAprob/ContAlumno)*100;
writeln('el porcentaje de alumnos aprobados es ' , porcentajeAprobados:3:2 , '%');
readln();
end.

