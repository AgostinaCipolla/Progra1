program G2EJ5;
var
  a,b,c:integer;
begin
   writeln('ingrese 3 numeros enteros');
   readln(a,b,c);

   if (a>b) and (a>c) then
      writeln('el mayor es ' , a)
   else
         if (b>a) and (b>c) then
            writeln('el mayor es  ', b)
         else
             if (c>a) and (c>b) then
               writeln('el mayor es ' , c);

readln();
end.

