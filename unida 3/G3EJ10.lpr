program G3EJ10;
var
  arch:text;
  cont,primero,num:word;
begin
cont:=1;
     assign(arch,'g3ej10.txt'); reset(arch);
     readln(arch,primero);
     while not eof(arch) do
       begin
          readln(arch,num);
          if primero=num then
             cont:=cont+1
          else
             begin
               writeln('el nro ' , primero , ' se repite ' , cont , ' veces');
               cont:=1;
               primero:=num;

             end;
       end;
     writeln('el nro ' , num , ' se repite ' , cont , ' veces');
close(arch);
readln();
end.

