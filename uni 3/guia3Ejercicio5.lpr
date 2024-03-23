program guia3Ejercicio5;
var
  K,Q,i,Multiplo:integer;
begin
 i:=1;
 Multiplo:=0;
     writeln('ingrese el valor para calcular sus multiplos');
     readln(K);
     writeln('ingrese el valor tope de multiplos a calcular');
     readln(Q);

      while (K*i) < Q do
       begin
             Multiplo:= K*i;
             writeln( k , ' x ' , i:1 ,'=' , multiplo:3);
             i:=i + 1;
           end;

readln();
end.

