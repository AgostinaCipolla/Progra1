program G3EJ20;
var
  arch:text;
  num,cont,sum:integer;
begin
    assign(arch,'g3ej20.txt'); reset(arch);
    sum:=0;
    cont:=0;
    read(arch,num);
    while not eof(arch) and (num>0) do
        read(arch,num);

    while not eof(arch) do
        begin
          read(arch,num);

           if num>0 then
            begin
              sum:=sum+num;
              cont:=cont+1;
            end
           else
            begin
             if cont>0 then
              begin
               writeln(sum/cont:3:2);
               sum:=0;
               cont:=0;
              end;
            end;
        end;
       //lee un conjunto que no deberia leer, el ultimo q no esta entre negativos
close(arch);
readln();
end.
