%Para correr un programa se puede dar click en run o en el comandWindow poner el nombre del script
clc 	%Es buena practica limpiar la pantalla antes de correr cada script
a=input('Ingrese un dato: '); %input nos permite recibir datos
b=input('Ingrese un dato: ');
suma=a+b;
disp('suma');
disp(suma);		%Muestra los datos
fprintf('Suma de dos numeros=%10i\n',suma);
%El numero 10 indica los espacios despues de la impresion
%la letra i indica que se va a imprimir un entero
%Para imprimir flotantes se indica %10.2f
%Para imprimir en formato exponencial se indica %10.2e


%Variables globales
%Las Las variables globales son variables que, una vez creadas en MATLAB, son reconocidas  en cualquier parte,
%incluidos  todos los script. En general,  cualquier  variable  definida en  la  Ventana de Comandos es 
%reconocida en cualquier script. Cuando una variable se define en un script esta puede ser usada en 
%la Ventana de Comandos. En otras palabras, cualquier variable creada existe, y por lo tanto puede ser manipulada
%tanto en scripts como en la Ventana de Comandos.

%Comandos de salida
%Los comandos de salida son disp y fprintf

%Sentencias condicionales
x = 10;
minVal = 2;
maxVal = 6;

if (x >= minVal) && (x <= maxVal)
    disp('Value within specified range.')
elseif (x > maxVal)
    disp('Value exceeds maximum value.')
else
    disp('Value is below minimum value.')
end

%Sentencia switch-case
n = input('Enter a number: ');

switch n
    case -1
        disp('negative one')
    case 0
        disp('zero')
    case 1
        disp('positive one')
    otherwise
        disp('other value')
end


%Ciclo for
 for i=1:n
   sentencias
   end

 for i=n:0.2:1	%n es el valor inicial, 0.2 es el incremento y 1 es el valor final 
   sentencias
   end

  for i=1:m
   for j=1:n
   	sentencias
   end
  end

  for i=A 	%A es un vector
   sentencias
   end

 %Ciclo while
  while condicion
  	sentencias
  end