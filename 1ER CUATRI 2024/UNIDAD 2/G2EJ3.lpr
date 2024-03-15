program G2EJ3;
var
  car:char;
begin
  writeln('ingrese un caracter');
  readln(car);
  case car of
       'a'..'z':writeln('el caracter es una letra minuscula');
       'A'..'Z':writeln('el caracter es una letra mayuscula')
   else
       writeln('el caracter no es letra');
  end;
end.

