program guia3Ejercicio16;
var
  Archivo:text;
  max:integer;
  N,i,ContKilom:word;
  Patente,PatenteMax:string[6];
  car:char;
  Combustible,AcumCombust,TotalLitros,kilometros,AcumKilomet,Consumo,Min:real;
begin
kilometros:=0;
   max:=-999;
   min:=999;
   assign(Archivo, 'ejercicio16g3.txt');
   reset(Archivo);
    readln(Archivo,N);
   while NOT eof(Archivo) do
   begin
      for i:=1 to N do
      begin
         ContKilom:=0;
         AcumKilomet:=0;
         AcumCombust:=0;
         Consumo:=0;
           read(Archivo,Patente,car);
           read(Archivo,Combustible);
           read(Archivo,Kilometros);
           while Kilometros<>0 do
           begin
              AcumKilomet:=AcumKilomet + Kilometros;
              AcumCombust:= AcumCombust + Combustible;
              Consumo:= Combustible/AcumKilomet;
              ContKilom:=ContKilom + 1;
                if ContKilom>max then
                 begin
                 PatenteMax:=Patente;
                 max:=ContKilom;
                 end;
                if AcumKilomet<Min then
                begin
                 TotalLitros:=AcumCombust;
                 Min:=AcumKilomet;
                end;
              read(Archivo,Kilometros);
           end;
           writeln('el vehiculo ' , Patente:1 , ' consumio ' , Consumo:3:2 , ' por kilometro');
        readln(Archivo);
      end;
       end;
   writeln('el que hizo mas km fue ' , PatenteMax);
   writeln('el total de litros consumidos por el auto hizo menos km ' , TotalLitros:3:2);
close(Archivo);
readln();
end.

