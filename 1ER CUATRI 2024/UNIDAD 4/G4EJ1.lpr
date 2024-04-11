program G4EJ1;

function esLetra(let:char):boolean;
  begin
    if (let in ['a'..'z']) or (let in ['A'..'Z']) then
       esLetra:=true
    else
        esLetra:=false;
  end;
var
 letra:char;
 arch:text;
begin
      assign(arch,'g4ej1.txt'); reset(arch);

      while not eof(arch) do
        begin
          readln(arch,letra);
          if esLetra(letra) then
             writeln('el caracter ' , letra , ' ES una letra')
          else
              writeln('el caracter ' , letra , ' NO es una letra');
        end;
close(arch);
readln();
end.

