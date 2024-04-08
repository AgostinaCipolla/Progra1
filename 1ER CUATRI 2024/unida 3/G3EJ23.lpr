program G3EJ23;
var
  arch,archSalida:text;
  car:char;
  contCar,contMinus,contMayus,contNro,contOtros,contPalabra,contCorrecta,contIncorrecta,max:integer;
  contra,contraMax:string[25];
  porcentaje:real;
begin
     assign(arch,'g3ej23.txt'); reset(arch);
     assign(archSalida,'g3ej23salida.txt'); rewrite(archSalida);
     contPalabra:=0; contCorrecta:=0;  contIncorrecta:=0;
     contCar:=0;
     contMayus:=0;
     contMinus:=0;
     contNro:=0;
     contOtros:=0;
     contra:='';
     max:=-9999;

     while not eof(arch) do
        begin
          read(arch,car);
           if (car<>' ') then
              begin
                contCar:=contCar+1;  //para ver si tiene 8 caracteres
                case car of
                'a'..'z':contMinus:=ContMinus+1;
                'A'..'Z':contMayus:=ContMayus+1;
                '1'..'9':contNro:=ContNro+1;
                else
                    contOtros:=contOtros + 1;
                end;
               contra:=contra+car;
              end
           else
            begin
               contPalabra:=contPalabra+1;
               if (contCar>=8) and (contMinus>0) and (contMayus>0) and (contNro=4) and  (contOtros=0) then
                begin
                  writeln(archSalida,contra);
                  contCorrecta:=contCorrecta+1;
                end
               else
                begin
                  contIncorrecta:=contIncorrecta+1;
                  if length(contra)>max then
                   begin
                     max:=length(contra);
                     contraMax:=contra;
                   end;
                end;
                 contCar:=0;
                 contMayus:=0;
                 contMinus:=0;
                 contNro:=0;
                 contOtros:=0;
                 contra:='';

           end;
        end;
if (contCar>=8) and (contMinus>0) and (contMayus>0) and (contNro=4) and  (contOtros=0) then
  begin
    writeln(archSalida,contra);
    contCorrecta:=contCorrecta+1;
  end
else
 begin
    contIncorrecta:=contIncorrecta+1;
      if length(contra)>max then
       begin
        max:=length(contra);
        contraMax:=contra;
       end;
 end;

porcentaje:= contIncorrecta/(contIncorrecta+contCorrecta);
writeln('% de contrasenas invalidas ' , (porcentaje*100):4:2);
writeln('la contrasena invalida mas larga tiene ' , max , ' caracteres');
close(arch);
close(archSalida);
readln();
end.

