program guia3Ejercicio15;
var
  Archivo:text;
  Letra,Car1,Car2:char;
  ContPalabras:word;
begin
  assign(Archivo,'ejercicio15ag3.txt');
  reset(Archivo);
  writeln('ingrese la letra en minuscula que desea que empiecen las palabras');
  readln(Letra);
  ContPalabras:=0;
  Car1:=' ';
      while Car1<>'.' do
         begin
          read(Archivo,Car2);
            if (Car1=' ') AND (Car2=Letra) then
               ContPalabras:= ContPalabras + 1;
            Car1:=Car2;
         end;
close(Archivo);
writeln('la cantdad de palabras que empiezan con ' , Letra , ' son ' , ContPalabras , '  palabras');
readln();
end.

