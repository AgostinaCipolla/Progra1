program CalculoHoraFinal;

procedure SumarSegundos(var horaInicialH, horaInicialM, horaInicialS: Integer; segundosTranscurridos: Integer);
begin
  horaInicialS := horaInicialS + segundosTranscurridos;
  horaInicialM := horaInicialM + (horaInicialS div 60);
  horaInicialS := horaInicialS mod 60;
  horaInicialH := horaInicialH + (horaInicialM div 60);
  horaInicialM := horaInicialM mod 60;
end;

var
  horaInicialH, horaInicialM, horaInicialS, segundosTranscurridos: Integer;
begin
  // Solicitar al usuario la hora inicial
  Write('Ingrese la hora inicial (horas minutos segundos): ');
  Readln(horaInicialH, horaInicialM, horaInicialS);

  // Solicitar al usuario los segundos transcurridos
  Write('Ingrese los segundos transcurridos: ');
  Readln(segundosTranscurridos);

  // Llamar al procedimiento para calcular la hora final
  SumarSegundos(horaInicialH, horaInicialM, horaInicialS, segundosTranscurridos);

  // Ajustar las horas si se supera 24
  horaInicialH := horaInicialH mod 24;

  // Mostrar la hora final
  Writeln('Hora final: ', horaInicialH, ' horas ', horaInicialM, ' minutos ', horaInicialS, ' segundos.');

  Readln;
end.


{program guia4Ejercicio13;
procedure horafinal(hora,min,seg:word);
begin
  writeln('ingrese los segundos transcurridos');
  readln(segundos);
  if seg>59 then
   seg:=seg+1;
    if
end;
var
  hora,min,seg:word;
begin
  writeln('ingrese la hora inicial (hora/minutos/segundos');
  readln(hora,min,seg);
  horafinal(hora,min,seg);

end.  }

