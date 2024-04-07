program G3EJ19;
var
   arch:text;
   num,max:integer;
begin
max:=-9999;
    assign(arch,'g3ej19.txt'); reset(arch);
    read(arch,num);
    while (not eof(arch)) and (num>=0) do
           read(arch,num);
     while not eof(arch) do
       begin
          read(arch,num);

           if num>0 then
            begin
             if num>max then
                max:=num;
            end
           else
            begin
             read(arch,num);
             writeln(max);
              max:=num;
            end;
       end;
close(arch);
readln();
end.

