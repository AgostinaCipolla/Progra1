program G3EJ5;
var
  K,mult,Q,i:integer;
begin
mult:=0;
     writeln('ingrese un numero K entero');
     readln(K);
     writeln('ingrese el tope Q');
     readln(Q);

     for i:=1 to (Q div K) do
       begin
         mult:=k*i;
         writeln(mult);
       end;

readln();
end.

