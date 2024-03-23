{-7 6 -1 0 2 4 -8 -7 3 1 -24 6 7 0 9
7 6 -1 0 2 4 -8 -7 3 1 -24 6 7 0 9 -8}
program guia3Ejercicio20;
var
  Archivo:text;
  Num,ContNum:integer;
  Promedio,AcumNum:Real;
  EncontradoNegativo: boolean;
begin
    assign(Archivo, 'ejercicio20g3.txt');
    reset(Archivo);
    ContNum:=0;
    AcumNum:=0;
    EncontradoNegativo:= false;
       while NOT eof(Archivo) do
         begin
          read(Archivo,Num);
           if  EncontradoNegativo then    //como el primero siempre es false sale y va hasta el if num<0 de abajo
            begin
                  if num<0 then
                   begin
                        if ContNum>0 then
                         begin
                           Promedio:= AcumNum/ContNum;
                           writeln(Promedio:3:2);
                         end;
                           ContNum:=0;
                           AcumNum := 0;
                   end
                  else
               if num>0 then
                  begin
                    ContNum:= ContNum +1;
                    AcumNum:= AcumNum+Num;
                  end;
           end
         else
          if num<0 then
              EncontradoNegativo:= true;
   end;

close(archivo);
readln();
end.
