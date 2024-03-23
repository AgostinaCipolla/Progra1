program G3EJ1;
var
  max,nro,min:integer;
  aparic,N,i,primera:byte;
  existeimpar:boolean;
begin
  max:=-9999;
  min:=9999;
  existeimpar:=false;
  writeln('ingrese la cantidad de numeros N');
  readln(N);
  for i:=1 to N do
      begin
        writeln('ingrese un nro');
        readln(nro);
             if nro>max then
              begin
                max:=nro;
                primera:=i; //para saber cual es la primera aparicion del maximo
                aparic:=0; //para saber cuantas ocurrencias tiene el maximo
              end;
             if nro=max then
              aparic:=aparic+1;
      if  nro<min then
       begin
         if (nro mod 2 <> 0) then
          min:=nro;
         existeimpar:=true;
       end
      end;


writeln('el maximo es ' , max , ' la primera aparicion es ' , primera , ' las ocurrencias son ' , aparic);
 if min=9999 then
  writeln('no existe minimo de los impares')
 else
    writeln('el minimo de los impares es ' , min);
readln();
end.

