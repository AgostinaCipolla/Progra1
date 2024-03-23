program guia3Ejercicio22;       //no esta terminado
var
  arch,ArchSalida:text;
  letra:char;
  palabra,palabramax:string;
  contvocal,max:byte;
begin
  assign(Arch,'ejercicio22g3.txt'); reset(Arch);
  assign(ArchSalida, 'palabras.txt'); rewrite(ArchSalida);
   max:=0;
   palabramax:=' ';
   contvocal:=0;
   palabra:=' ';
     while NOT eof(Arch) do
      begin
      read(Arch,letra);

      if letra=' ' then          {entra aca cuando hay un espacio entre las palabras}
        begin
           if contvocal>max then      {se fija si la ultima palabra tiene mas vocales que la anterior}
             begin
                max:=contvocal;            {si tiene mayor cantidad de vocales cambia el maximo}
                palabramax:=palabra;        {si tiene mayor cantidad de vocales guarda la palabra}
             end;
             palabra:=' ';                 {vuelve a inicializar porque tiene que leer la nueva palabra}
             contvocal:=0;
        end
         else
          begin

           if (letra='a') OR (letra='e') OR (letra='i') OR (letra='o') OR (letra='u') then    {ya pregunto si es blanco, ahora pregunta si es vocal}
               contvocal:=contvocal + 1;               {la cuenta solo si es vocal sino sale y guarda la palabra}
               palabra:=palabra + letra;                {arma la palabra}
          end;
         end;
  if contvocal>max then           {verifica la ultima palabra}
    begin
    max:=contvocal;
    palabramax:=palabra;
   end;

  if length(palabramax)>4 then
     begin
     palabra:=' ';
      for contvocal:=length(palabramax) downto 1 do
        palabra:=palabra +  palabramax[contvocal];
      writeln(ArchSalida, 'palabra con mas de cuatro letras' , palabra);
     end;

writeln(ArchSalida ,'la palabra con mas vocales es ' , palabramax);
close(arch); close(ArchSalida);
end.
