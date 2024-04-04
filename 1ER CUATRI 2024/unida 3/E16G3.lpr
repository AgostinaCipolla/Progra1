program E16G3;
var
  arch:text;
  patente,maxPatente:string[6];
  km,litros,acumKm,consumo,acumLitros,TotalLitros,contPatente,maxPat,minPat:real;
begin
       assign(arch,'EJ16G3.txt'); reset(arch);
       maxPat:=-9999;
       minPat:=9999;
       while not eof(arch) do
           begin
                contPatente:=0;
               read(arch,patente);
               read(arch,litros);
              acumKm:=0;
              acumLitros:=0;
              read(arch,km);
              while km<>0 do
               begin
                 acumKm:=acumKm+km;
                 contPatente:=contPatente+1;

                 read(arch,km);
                 if contPatente>maxPat then
                   begin
                    maxPatente:=patente;
                    maxPat:=contPatente;
                   end;

               end;
              if acumKm<minPat then
                   begin
                    TotalLitros:=litros;
                    minPat:=acumKm;
                   end;
              readln(arch);
              writeln('el auto ' , patente , ' consumio ' , litros/acumKm:6:2);

           end;

writeln('la patente que mas viajes hizo es ' , maxPatente , ' viajes: ' , maxPat:6:1);
writeln('el total de litros consumidos por el auto que hizo menos km es ' , totalLitros:6:2);
close(arch);
readln();
end.
