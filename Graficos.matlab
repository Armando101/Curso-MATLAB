%Para graficar se usa la sentenica plot
plot(x,y)
axis equal; 		%Esta sentencia coloca los ejes de igual tamanio
axis([-3 5 -4 5])	%Define el eje x desde -3 hasta 5 y el eje y desde -4 hasta 5
grid on				%Cuadricula la grafica
grid minor			%Hace una cuadricula menor

%La funcion plot utiliza diferentes caracteres especiales para mejorar la apariencia de una 
%graica tales como color de linea, grosor, etc.

%Tipos de linea
- 	%Solido (defecto)
--	%Rayada
: 	%Punteada
-.	%Raya-Punto

%Tipo de punto
o 	%Circulo		s 	Cuadrado
x	%Marca x 		d 	Diamante
+	%Marca + 		< 	Triangulo izquierda
*	%Estrella		> 	Triangulo derecha
.	%Punto 			p 	Pentagrama
h 	%Hexagrama

%Color
b	%Azul
g	%Verde
r	%Rojo
c 	%Cyan
m 	%Magenta
y 	%Amarillo
k 	%Negro

%Ejemplo

plot(x, y, 'linestyle', '--', 'marker', 'x', 'color', 'r', 'linewidth', 2.5)
plot(x, y, '--xr', 'linewidth', 2.5)
plot(x, y, '--o')


%-------------------------Grafica de funciones -------------%

%Ejemplo: Graficar y=x^2 -4
x=linspace(-4, 4, 100);	%Entre mas grande sea el ultimo termino mas exacta es la grafica
y=x.^2-4;
plot(x,y)

%Grafica de una funcion lineal de la forma y=ax+b
%y=2x+3
x=[-4 4];
y=2.*x + 3;
plot(x, y)

%Grafica de una funcion cuadratica de la forma y=ax^2+bx+c 
%y=2x^2-4x+5
x=linspace(-5, 5, 100)
y=2.*x^2-4.*x+5
plot(x,y)

%Grafica de una funcion cubica de la forma y=ax^3+bx^2+cx+d 
%y=2x^3-6x^2+2x-3
x=linspace(-5, 5, 100);
y=2.*x.^3-6.*x.^2+2.*x-3;
plot(x, y)

%Grafica de una funcion racional de la forma y=p(x)/q(x).
%y=1/(2-x)
x=linspace(-5, 5, 100);
y=1./2-x;
plot(x, y)

%y=(x-1)/(x^2 + x -12)
x=linspace(-7, 6, 100);
y=(x-1)./(x.^2+x-12);
plot(x, y)

%Grafica de una funcion racional que incorpora funciones matematicas como valor absoluto, logaritmo, etc
%y=x|x-4|
x=linspace(-10, 10, 100);
y=x.*abs(x-4);
plot(x, y)

%y=ln(x+2)-sqrt(x-12)


%Grafica de una funcion seno de la forma
		%y=a+bsen(cx+f)	Donde:

%a: Representa el desplazamiento o traslacion vertical
%b: Representa la amplitud de la funcion
%x: Es un angulo que puede ser expresado en grados sexagesimales o radianes

%Periodo: T=2pi/|c|=360\|c|	Cada que valor de "x" se repite en la grafica
%Desface: d=-f\|c|	punto de inicio de la grafica

%Ejemplo: grafica de y=seno(x)
x=linspace(0, 2*pi, 100);
y=sin(x);	%Calcula el seno en radianes
plot(x, y)

x=linspace(0, 360, 100);
y=sind(x);	%Calcula el seno en grados
plot(x, y)


%y=sen(x + 90)
x=linspace(-90, 270, 100);
y=sind(x+90);
plot(x, y)

%y=sen(3x)
x=linspace(0, 360);
y=sind(3.*x)
plot(x, y)

%y=sen(x)
a=0;
b=1;
c=1;
fi=0;
T=360/abs(c);
d=-fi/abs(c);
x=linspace(d, 360+d, 100);
y=a+b*sind(c.*x+fi);
plot(x, y)

% Grafica una señal senoidal que tenga 1kHz de frecuencia, 10 v de amplitud. Muestre 4 periodos de la señal

f=1000;
T=1/f;
a=9.8995;
t=linspace(0, 4*T, 1000);
y=a*sin(2*pi*f*t);
plot(t, y)


%------Graficar varias funciones en la misma ventana----%
plot(x, y1, x, y2)

plot(x, y1, '-r', x, y2, '--b', 'linewidth', 3)

plot(x, y1)
hold on
plot(x, y2)

plot(x, y1, '-r', 'linewidth', 1)
hold on
plot(x, y2, '--b', 'linewidth', 3)

x=linspace(0, 360, 100);
y1=sind(x);
y2=cosd(x);
y3=tand(x);
y4=cotd(x);
y5=secd(x);
y6=cscd(x);
subplot(3, 2, 1), plot(x, y1)	%Genera 3 filas y dos columnas, en la primera posicion haz plot(x, y1)
subplot(3, 2, 2), plot(x, y2, '--r'), grid on
subplot(3, 2, 3), plot(x, y3), grid on, grid minor
subplot(3, 2, 4), plot(x, y4)
subplot(3, 2, 5), plot(x, y5, 'linewidth', 3)
subplot(3, 2, 6), plot(x, y6)

%----------------Graficos en 3D--------------%
%Las curvas en el espacio se generan de forma similar a las curvas en el plano, por ejemplo existe la funcion
%plot(x, y, z)	que sirve para hacer lineas en 3D, por ejemlo graficaremos la recta que une los puntos (2, 0, 0)
%y (4, 3, 5) 

x=[2, 4];
y=[0,3];
z=[0,5];
plot3(x, y, z)
grid on
plot3(x, y, z, '-r', 'linewidth', 3)
xlabel('Eje x')
ylabel('Eje y')
zlabel('Eje z')
title('Grafica de una recta en 3D')

%----------Grafica de un resorte de longitud 20 y diametro 10
x=linspace(0, 20, 200); %2000 puntos de 0-20 (longitud 20)
y=10*sin(2.*x);	%El 10 indica el diametro del resorte
z=10*cos(2.*x); %El dos indica 

%------------Grafica de funciones de la forma z=f(x, y)

%Ejemplo: Graficar la funcion 
%z=e^-(x^2+y^2) En la region del plano D={(x,y)/-2<x<2, -2<y<2}
[x,y]=meshgrid(-2:0.5:2);	%Genera dos matrices con los valores de -2 a 2 con intervalo de 0.5
[x,y]=meshgrid(linspace(-2,2,100));
z=exp(-(x.^2+y.^2));
plot3(x,y,z);grid minor
mesh(x,y,z);grid minor
surf(x,y,z);grid minor
surf(x,y,z),shading flat;grid minor

[x,y]=meshgrid(linspace(-2,2,100), linspace(-4,4,100));
subplot(2,2,1); plot3(x,y,z); grid minor
subplot(2,2,2); mesh(x,y,z); grid minor
subplot(2,2,3); surf(x,y,z); grid minor
subplot(2,2,4); surf(x,y,z), shading flat; grid minor


Ubicacion de la leyenda
'north'	Parte superior interior de los ejes
'south'	Parte inferior interior de los ejes
'east'	Parte derecha interior de los ejes
'west'	Parte izquierda interior de los ejes
'northeast'	Parte superior derecha interior de los ejes (valor predeterminado para los ejes 2D)
'northwest'	Parte superior izquierda interior de los ejes
'southeast'	Parte inferior derecha interior de los ejes
'southwest'	Parte inferior izquierda interior de los ejes
'northoutside'	Encima de los ejes
'southoutside'	Debajo de los ejes
'eastoutside'	A la derecha de los ejes
'westoutside'	A la izquierda de los ejes
'northeastoutside'	Esquina superior derecha exterior de los ejes (valor predeterminado para los ejes 3D)
'northwestoutside'	Esquina superior izquierda exterior de los ejes
'southeastoutside'	Esquina inferior derecha exterior de los ejes
'southwestoutside'	Esquina inferior izquierda exterior de los ejes
'best'	Dentro de los ejes donde se produzca menos conflicto con los datos de trazado
'bestoutside'	A la derecha de los ejes
'none'	Determinada por la propiedad Position. Utilice la propiedad Position para mostrar la leyenda en una ubicación personalizada.

Ejemplo:
legend({'Primera medición','Segunda medición', 'Tercera medición'}, 'Location', 'northwest')
legend('boxoff')	Elimina el cuadro donde aparece la leyenda
