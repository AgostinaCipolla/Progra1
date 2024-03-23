program G3EJ2;
const
  SUELDOBASICO=15000;
var
  N,i,antig:word;
  nom,nombmax:string;
  sueldo,sueldomax,acumSueldo:real;
begin
acumSueldo:=0;
sueldomax:=-9999;
 writeln('ingrese el numero de empleados');
 readln(N);
    for i:=1 to N do
     begin
        writeln('ingrese el nombre del empleado');
        readln(nom);
        writeln('ingrese la antiguedad del empleado en años');
        readln(antig);
        case antig of
          1..5:sueldo:=SUELDOBASICO*1.05;
          6..10:sueldo:=SUELDOBASICO*1.08;
          11..15:sueldo:=SUELDOBASICO*1.12
        else
           sueldo:=SUELDOBASICO*1.20;
        end;

sueldo:=sueldo*0.89;
sueldo:=sueldo-500;

         if sueldo>sueldomax then
           begin
               sueldomax:=sueldo;
               nombmax:=nom;
           end;
         acumSueldo:=AcumSueldo+sueldo;
writeln('el empleado ' , nom , ' gana $' , sueldo:6:2);
   end;
writeln('el empleado con mayor sueldo es ' , nombmax);
writeln('el sueldo promedio es ' , (acumSueldo/N):6:2);
readln();
end.

