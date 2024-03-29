{ Dada la ecuación de una parábola y=ax2+ bx +c, escribir un programa que mediante un menú de
opciones iterativo permita:
a) Encontrar el eje de simetría, sabiendo que x1 = -b/(2.a) y si presenta un mínimo ó un máximo en
f(x1).
b) Informar hacia dónde es abierta la parábola.
c) Calcular y mostrar las raíces, informar en caso que no existan. Para ello debe analizar si el
discriminante, D = b2– 4ac, es mayor, menor ó igual a cero.
d) Dado un conjunto de valores de x informar su imagen.
Usar procedimientos y/o funciones según corresponda}
program guia4Ejercicio11;
procedure Imagen (N1,N2,N3:real;var x,y:Real);
begin

   Y:=(N1*sqr(x)) + (N2*x) + N3;
end;

procedure Simetria (N1,N2,N3:real;Var Xv,Yv:real);
begin
   Xv:=(-N2)/(2*N1);
   Yv:= (N1*sqr(Xv)) + (N2*Xv) + N3;
end;
procedure raices(N1,N2,N3:real;Var X1,X2:real);
var
  determinante:real;
begin
   determinante:=sqr(N2)-4*N1*N3;
   if determinante>0 then
     begin
      X1:= (-N2 + (sqrt(sqr(N2)-4*N1*N3)))/(2*N1);
      X2:= (-N2 - (sqrt(sqr(N2)-4*N1*N3)))/(2*N1);
     end
  else
      if determinante=0 then
        begin
          X1 := -N2 / (2 * N1);
          X2 := X1;
        end
      else
          begin
           X1 := 0;
           X2 := 0;
          end;
end;
procedure Menu(Var Opcion:char);
begin
     Writeln('Menu de opciones');
     Writeln('a- encuentra el eje de simetria y maximos y minimos si los hubiera');
     Writeln('b- calcula y muestra las raices y decir si no existen');
     Writeln('c- dados un conjunto de nros informar su imagen');
     Writeln('d- Finalizar');
end;

var
  Opcion:char;
  N:byte;
  Xv,Yv,N1,N2,N3,Xvertice,Yvertice,X1,X2,Raiz1,Raiz2,x,Y:real;
begin
     Opcion:='x';
     Xv:=0; Yv:=0;
     X1:=0; X2:=0;
     writeln('ingrese los valores de a, b y c de la ecuacion de la parabola');
     readln(N1,N2,N3);
     repeat
          Menu(Opcion);
          write('ingrese una opcion '); readln(opcion);
          case Opcion of
           'a':begin
                      Simetria(N1,N2,N3,Xv,Yv);
                      writeln('El valor de X del eje de simetria es  ' , Xv:2:3 , ' y el El valor de Y es ' , Yv:2:3);

                      if N1<0 then
                        Writeln('la funcion tiene un maximo en (' ,Xv:2:3 , ',', Yv:2:3 ,') y se abre hacia abajo')
                      else
                        Writeln('la funcion tiene un minimo en (' ,Xv:2:3 , ',', Yv:2:3 ,') y se abre hacia arriba')
               end;
           'b':begin
                      raices(N1,N2,N3,X1,X2);
                      if (X1=0) AND (X2=0) then
                        writeln('la parabola no tiene raices')
                      else
                        writeln('las raices de la parabola son: ' , X1:2:1 ,' y '  , X2:2:1);
               end;
           'c':begin
                      writeln('ingrese el valor de x para calcular su imagen');
                      readln(x);
                     Imagen (N1,N2,N3,x,y);
                     writeln('la imagen de ' , x:3:2 , ' es ' , y:3:2);
              end;
           'd':
                     writeln('programa finalizado')
          else
                     writeln('opcion no valida, debe ingresar a, b o c');
          end;
     until Opcion='d';


readln();
end.

