program ejercicio19g3;
var
   max,num:integer;
   archivo:text;
begin
  assign(archivo,'ejercicio19g3.txt');
  reset(archivo);
  read(archivo,num);
   while NOT eof(archivo) and (num>=0) do
      read(archivo,num);
     while NOT eof(archivo) do
        begin
             read(archivo,num);
             max:=num;
	while (not eof(archivo)) and (num>=0) do
             begin
                read(archivo,num);
                if num>max then
                max:=num;
             end;
             if num<0 then
             writeln(max);
	end;
close(archivo);
readln();
end.

