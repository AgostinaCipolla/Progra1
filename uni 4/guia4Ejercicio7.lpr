program guia4Ejercicio7;

function impuesto(tipo:char;importe:real):real;
const
  RI=1.21;
  NRI=1.31;
var
 IVA:real;
begin
    if tipo='S' then
     IVA:=importe*RI
    else
     IVA:=importe*NRI;
impuesto:=IVA;
  end;

var
 arch:text;
 mes,AcumMess,i:byte;
 nombre,NombreMin:string[9];
 tipo:char;
 importe,ImpuestoIva,Min,AcumImporte:real;
begin
  assign(arch,'ejercicio7g4.txt');
  reset(arch);
  readln(arch,mes);
  Min:=9999;
      while NOT eof(arch) do
          begin
               readln(arch,nombre,tipo);
               ImpuestoIva:=0;
               AcumImporte:=0;
              for i:=1 to mes do
                begin
                   read(arch,importe);
                   ImpuestoIva:= ImpuestoIva + impuesto(tipo,importe);
                   AcumImporte:= AcumImporte + importe;
                   AcumMess:=mes;
                end;
              writeln('el impuesto iva para ' ,nombre , 'del tipo ' , tipo , ' es ' ,  ImpuestoIva:3:2 , ' en ' , AcumMess , ' meses' );
              readln(arch);
        if Tipo='S' then
         begin
          if AcumImporte<Min then
           begin
            Min:=AcumImporte;
            NombreMin:=Nombre;
           end;
          end;
          end;
      writeln('el comercio que menos facturo es ' , NombreMin);
      readln(arch);
close(arch);
readln();
end.

