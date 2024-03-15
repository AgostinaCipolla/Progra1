program G1EJ1;
var
   N,M,CantN,CantM: real;
begin
   writeln('ingrese la cantidad de pintura blanca que tiene');
   readln(N);
   CantN:=(N*9.5)/4.5;
   writeln('ingrese la cantidad de pintura negra que tiene');
   readln(M);
   CantM:=(M*4.5)/9.5;

   writeln('la cantidad de pintura negra que necesita es ', CantN:4:2);
   writeln('la cantidad de pintura blanca que necesita es ', CantM:4:2);

end.

