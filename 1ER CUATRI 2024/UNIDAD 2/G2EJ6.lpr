program G2EJ6;
var
  l1,l2,l3,aux:char;
begin
       writeln('ingrese 3 letras');
       readln(l1);
       readln(l2);
       readln(l3);

       if ord(l1)>ord(l2) then
          begin
            aux:=l1;
            l1:=l2;
            l2:=aux;
          end;
       if ord(l2)>ord(l3) then
          begin
            aux:=l2;
            l2:=l3;
            l3:=aux;
                if ord(l1)>ord(l2) then
                 begin
                   aux:=l1;
                   l1:=l2;
                   l2:=aux;
                  end;
           end;

writeln('las letras ordenadas son ' , l1 , l2 , l3);
readln();
end.
