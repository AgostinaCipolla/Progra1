program G2EJ4;
var
dia1,dia2,mes1,mes2,anio1,anio2,mes:byte;
begin
  writeln('ingrese la primera fecha d/m/a');
  readln(dia1,mes1,anio1);
  writeln('ingrese la segunda fecha d/m/a');
  readln(dia2,mes2,anio2);

        if anio1<anio2 then
           begin
               writeln('la primer fecha es la mas antigua');
               mes:=mes1;
           end
        else
           if mes1<mes2 then
              begin
                 writeln('la primer fecha es la mas antigua');
                 mes:=mes1;
               end
           else
               if dia1<dia2 then
                  begin
                   writeln('la primer fecha es la mas antigua');
                   mes:=mes1;
                  end
               else
                   begin
                      writeln('la primer fecha es la mas antigua');
                      mes:=mes2;
                   end;

case mes of
     1..3:writeln('pertenece al primer trimestre');
     4..6:writeln('pertenece al segundo trimestre');
     7..9:writeln('pertenece al tercer trimestre');
     10..12:writeln('pertenece al cuarto trimestre');
end;
  readln();
end.

