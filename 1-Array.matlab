%----------------------Array Unidimensional-------------------------------%
%Declaracion

%Se declaran entre corchetes separados por comas
A = [3, 6, 8, 5];
%Tambien separados por espacios
B = [4, 1.5 6 1 -3, 2.5];

%Se puede acceder a los elementos
A(1)	% 3		Accede a la primera posicion
A(end)	% 5		Accede a la ultima posicion

%Asignar elementos al vector

A(5) = 10;
%Si el vector es de cuatro elementos y ponemos A(10) = 8; 
%Rellena los espacios del 5-9 con 0's
%Tambien si no sabemos el tamanio y queremos agregar al final, podemos hacer
A(end + 1) = 7;

%Es posible hacer operaciones con los elementos
suma = A(3) + A(6);

%Para elminiar un elemento se hace de la siguiente forma
A(2) = [];
%Se puede elmiminar un conjunto de elementos
A(6:9) = [];
%Para crear un array de numeros consecutivos es posible hacer
A=[1:10];	%Crea un array de diez numeros consecutivos

B=[3:4:35]	%Crea un array empezando en 3 y terminando en 35 de 4 en 4

%Sentencia linspace
A=linspace(-5, 5, 11);	%Crea un array que va desde -5 a  5 con 11 elementos

%------------------------------- Operaciones Aritmeticas con Array-------------------------------------%

x+k; 	%Suma a cada elemento del vector x el escalar k
x-k;	%Resta a cada elemento del vector x el escalar k
k*x;	%Multiplica a cada elemento del vector x el escalar k
x/k; 	%Divide cada elemento del vector x el escalar k
k.^x; 	%Potenciacion del escalar k a cada elemento del vector x
x.^k;	%Potenciacion de cada elemento del vector x elevado a la k
x+y;  	%Suma de los vectores x e y con el mismo numero de elementos
x-y;  	%Resta de los vectores x e y con el mismo numero de elementos
x.*y;	%Multiplicacion elemento a elemento de los vectores x e y
x./y;	%Division elemento a elemento
x.^y;	%Potenciacion elemento a elemento


%---------------Array Bidimensional-----------------%

%Declaracion
A=[2, 4, -1; 4, 5, 3; 1, 2, -2];	%Arreglo de 3x3
B=[3, 4; 1, 0; 1, 1];	

%Ingresar a los elementos
A(2, 2)						%Accede al elemento 5
suma=A(1, 2) + A(2, 1);		%Devuelve 4+4=8
A(end)	%Devuelve el ultimo elemento (-2)

A(2,:)	%Muestra los elementos de la fila 2
A(:, 3) %Muestra los elementos de la columna 3

%Borrar filas y columnas

A(:, 4)=[];	%Borra la columna 4
A(4, :)=[];	%Borra la fila 4

%----------Operaciones Aritmeticas con matrices--------%
A+K;	%Suma a cada elemento de la matriz A el escalar k
A-K;	%Resta a cada elemento de la matriz A el escalar k
A*K;	%Multiplica a cada elemento de la matriz A el escalar k
A/K;	%Divide a cada elemento de la matriz A el escalar k
K.^A;	%Potenciacion del escalar k a cada elemento de la matriz A
A.^K;	%Potenciacion de cada elemento de la matriz A elevado a la k
A+B;	%Suma de las matrices A y B
A-B;	%Resta de las matrices A y B
A*B;	%Multiplicacion matricial de las matrices A y B
A/B;	%Division matricial de las matrices A y B
A.*B;	%Multiplicacion elemento a elemento de las matrices A y B que deben ser del mismo orden
A./B;	%Division elemento a elemento de las matrices A y B que deben ser del mismo orden
A.^B;	%Potenciacion elemento a elemento de las matrices A y B que deben ser del mismo orden

A=[2, -1, 1, 1; 0, 1, 2, -2];
B=A+2;	%A cada elemento de A sumale 2

B=2.^A; %La matriz B contiene los elementos que son 2 elevado a cada uno de los elemento de la matriz A
B=A.^2; %B contiene los elementos de A elevados al cuadrado

