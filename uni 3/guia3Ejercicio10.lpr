program guia3Ejercicio10;
var
  Arch:text;
  Numero1,Numero2,ContFrecuencia:integer;
begin
     assign(Arch, 'ejercicio10g3.txt');
     reset(Arch);
     ContFrecuencia:=1;
     readln(arch,Numero1);

    while NOT eof (Arch) do
      begin
        readln(Arch,Numero2);
         if Numero1=Numero2 then
            ContFrecuencia:=ContFrecuencia + 1
         else
          begin
            writeln('el numero ' , Numero1 , ' tiene ' ,ContFrecuencia , ' frecuencias');
            ContFrecuencia:=1;
          end;
        Numero1:=Numero2;
      end;

close(arch);
readln();
end.

