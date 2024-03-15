program G1EJ3;
const
   pagaHora=200;
var
   horas,sueldoBruto,sueldoNeto:real;
begin
    writeln('ingrese la cantidad de horas trabajadas');
    readln(horas);
    sueldoBruto:=horas*pagaHora;
    writeln('el sueldo bruto es ' , sueldoBruto:6:2);
    sueldoBruto:= sueldoNeto*0.89;
    sueldoBruto:= sueldoNeto*0.95;
    writeln('el sueldo neto es ' , sueldoNeto:6:2);
readln();
end.

