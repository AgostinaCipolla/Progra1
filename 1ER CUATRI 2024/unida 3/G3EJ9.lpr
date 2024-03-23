program G3EJ9;
var
  arch:text;
  ascendente:boolean;
  primero,num:word;
begin
ascendente:=false;
     assign(arch,'g3ej9.txt'); reset(arch);
     readln(arch,primero);
     while not eof(arch) do
       begin
         readln(arch,num);
          if primero<num then
             begin
               primero:=num;
               ascendente:=true;
             end;
       end;

       if ascendente then
          writeln('los nros estan ordenados en forma ascendente')
       else
          writeln('NO estan ordenados en forma ascendente');

close(arch);
readln();
end.

