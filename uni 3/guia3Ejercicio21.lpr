program guia3Ejercicio21;
var
  Arch:text;
  Num,Max,cont,contmax,orden:integer;
begin
     max:=0;
     cont:=0;
     contmax:=-999;
     assign(Arch,'ejercicio21g3.txt');
     reset(Arch);
     while NOT eof(Arch) do
      begin

         read(Arch,Num);

         if num=0 then
         begin
               read(Arch,Num);
                if num=0 then
                    begin
                         writeln();
                    end
                else
                 begin
                     writeln(max);
                     cont:=cont+1;
                      max:=num;
                         if cont>contmax then
                          begin
                            contmax:=cont;
                            orden:=1;
                          end
                      else
                       if cont=contmax then
                         orden:=orden+1;
                   end;
             end
         else
          begin
             if num>max then
             max:=num;
          end;
       end;
writeln(max);
writeln('el mas numeroso es el subconjunto ' , contmax);
close(Arch);
readln();
end.
