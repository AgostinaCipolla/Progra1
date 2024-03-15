program guia3Ejercicio9;
var
  Numero1,Numero2:integer;
  Arch:text;
  Ordenado:boolean;
begin
    assign (Arch, 'ejercicio9.txt');
    reset(Arch);
    Ordenado:=true;
    Numero2:=-999;
    while NOT eof (Arch) do
       begin
         readln(Arch,Numero1);

         if Numero1<Numero2 then
             Ordenado:=false;
          Numero2:=Numero1;
       end;
  if Ordenado then
    writeln('los numeros estan ordenados en forma ascendente')
  else
    writeln('los numeros no estan ordenados');
close(arch);
readln();
end.

