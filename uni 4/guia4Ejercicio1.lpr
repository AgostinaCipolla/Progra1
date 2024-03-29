program guia4Ejercicio1;

function EsLetra(caracter:char):boolean;
begin
  case caracter of
  'A'..'Z':EsLetra:=true;
  'a'..'z':EsLetra:=true
   else
     EsLetra:=false;
   end;
end;
var
  carac:char;
begin
writeln('ingrese un caracter para ver si es letra o no');
readln(carac);

    if EsLetra(carac) then
       writeln('El caracter ingresado es una letra')
    else
       writeln('El caracter ingresado NO es una letra');


readln();
end.

