program guia4Ejercicio8;
function Descuento(tipo:char;dia:byte;importe:real):real;
const
Desc1=0.05;
Desc2=0.1;
Desc3=0.15;
begin
   result:=0;
   if (Tipo='O') AND (importe>300) AND ((dia=10) OR (dia=20) OR (dia=30)) then
     result:=importe*Desc1;
   if (Tipo='C') AND (dia>15) then
        result:=importe*Desc2;
   if (Tipo='S') AND (dia<=15) then
          result:=importe*Desc3;
Descuento:= result;
end;

var
  arch:text;
  dia,Contador3Ofertas:byte;
  codigo:string[7];
  tipo:char;
  importe,TotalCDes,TotalSDes,ImporteTotal,DescuentoCliente,DescuentoTotal:real;
  beneficio,CompraC,CompraS,CompraO:boolean;
begin
  Contador3Ofertas:=0;
  assign(arch,'ejercicio8g4.txt');
  reset(arch);
   while NOT eof(arch) do
         begin
            readln(arch,codigo);
             TotalCDes:=0;
             TotalSDes:=0;
             DescuentoTotal:=0;
             CompraC:=false;
             CompraS:=false;
             CompraO:=false;
             read(arch,tipo);
             beneficio:=false;
              while tipo<>'F' do
                     begin
                      readln(arch,dia,importe);
                      DescuentoCliente:= Descuento(Tipo,dia,importe);
                      ImporteTotal:=importe - DescuentoCliente;
                      TotalCDes:= TotalCDes + ImporteTotal;
                      TotalSDes:= TotalSDes + importe;
                      DescuentoTotal:= DescuentoTotal + DescuentoCliente;
                      if DescuentoCliente<>0 then
                       begin
                         beneficio:=true;
                           if Tipo='C' then
                             CompraC:=true;
                           if Tipo='S' then
                             CompraS:=true;
                           if Tipo='O' then
                             CompraO:=true;
                       end;

               read(arch,tipo);
              end;

              if beneficio then
                writeln('el cliente ' , codigo , ' tuvo descuentos y abono $' ,TotalCDes:3:2)
               else
                 writeln('el cliente ' , codigo , ' no tuvo descuentos y abono $' ,TotalSDes:3:2);
              if CompraC AND CompraS AND CompraO then
               Contador3Ofertas:=Contador3Ofertas + 1;

              writeln(' el cliente ' , codigo , ' ahorro $' , DescuentoTotal:3:2);
          readln(arch);
         end;
writeln('un total de ' , Contador3Ofertas , ' accedieron a las 3 promociones');
close(arch);
readln();
end.

