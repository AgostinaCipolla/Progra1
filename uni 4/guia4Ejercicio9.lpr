program guia4Ejercicio9;
function NumeradorSuma(N1,D1,N2,D2:word):real;
var
   NumerSuma:real;
begin
       NumerSuma:= (((D1*D2*N1)/D1) + ((D1*D2*N2)/D2));
NumeradorSuma:= NumerSuma;
end;
function NumeradorProducto(N1,D1,N2,D2:word):real;
var
   NumerProduc:real;
begin
     NumerProduc:=N1*N2;
NumeradorProducto:= NumerProduc;
end;
function Denominador (N1,D1,N2,D2:word):real;
var
  Denom:word;
begin
      Denom:=D1*D2;
Denominador:= Denom;
end;

var
  arch:text;
  N1,D1,N2,D2:word;
begin
     assign(arch,'ejercicio9g4.txt');
     reset(arch);

     while NOT eof(arch) do
      begin
         readln(arch,N1,D1,N2,D2);

            if (D1<>0) AND (D2<>0) then
             begin
writeln('la suma es ' , N1, '/' ,D1 , ' + ' , N2 , '/' , D2 , '= ' , NumeradorSuma(N1,D1,N2,D2):1:0, '/' ,Denominador (N1,D1,N2,D2):1:0);
writeln('el producto es ' , N1, '/' ,D1 , ' * ' , N2 , '/' , D2 , '= ' , NumeradorProducto(N1,D1,N2,D2):1:0, '/' ,Denominador(N1,D1,N2,D2):1:0);
      end;
            end;
close(arch);
readln();
end.

