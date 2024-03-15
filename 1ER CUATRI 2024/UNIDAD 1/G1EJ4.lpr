program G1EJ4;
const
  supreal=300;
  baldosa=0.0625;
var
  N,M,superficie,porcentajeDeSup,totalbaldosas:real;
begin
  writeln('ingrese largo y ancho del superficie a embaldosar del terreno 10x30');
  readln(N,M);
  superficie:=N*M;
  porcentajeDeSup:= (superficie *100) / supreal;
  writeln('del total del terreno representa el ' , porcentajeDeSup:6:2 , '% del terreno total');
  totalbaldosas:=  superficie / baldosa;
  writeln('la cantidad de baldosas es ' ,  round(totalbaldosas));


readln();
end.

