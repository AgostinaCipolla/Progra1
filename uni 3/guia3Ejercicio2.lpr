program guia3Ejercicio2;
Const
  SUELDOBASICO=15000;
  CARGASSOCIALES=0.91;
  SEGURO=500;
var
  nombre,NombreMax:string;
  antiguedad:byte;
  N,i,ContSueldo:word;
  SueldoTotal,SueldoMax,AcumSueldo:real;
begin
  AcumSueldo:=0;
  ContSueldo:=0;
  writeln('ingrese la cantidad de empleados');
  readln(N);
  SueldoMax:=-9999;
     for i:=1 to N do
       begin
         writeln('ingrese el nombre del empleado');
         readln(nombre);
         writeln('ingrese la antiguedad del empleado');
         readln(antiguedad);

           case antiguedad of
             0..5:SueldoTotal:= SUELDOBASICO*1.05;
             6..10:SueldoTotal:= SUELDOBASICO*1.08;
             11..15:SueldoTotal:= SUELDOBASICO*1.12;
           else
             SueldoTotal:= SUELDOBASICO*1.2;
           end;

           SueldoTotal:= (SueldoTotal*CARGASSOCIALES) - SEGURO;

           if SueldoTotal>SueldoMax then
             begin
             SueldoMax:=SueldoTotal;
             NombreMax:=nombre;
             end;
       AcumSueldo:=AcumSueldo + SueldoTotal;
       ContSueldo:=ContSueldo + 1;
     writeln('el empleado ' , nombre , ' tiene un sueldo de $' , SueldoTotal:3:2);
      end;

  writeln('el empleado que cobra mas es ' , NombreMax);
  Writeln('el promedio de los sueldos es ' , (AcumSueldo/ContSueldo):3:2);
readln();
end.

