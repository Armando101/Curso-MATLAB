%----------------------------Funciones Aritmeticas---------------------------------------%

ceil(x) 	%Redondea al entero mas cercano hacia el infinito positivo  del valor de x
fix(x)		%Redondea al entero mas cercano hacia cero del valor x
floor(x)	%Redondea al entero mas cercano hacia menos infinito del valor de x
mod(x, y)	%Calcula el residuo de una division de x/y
rem(x, y)	%Calcula el residuo de una division de x/y
round(x)	%Redondea al entero mas cercano de x
rand()		%Genera un numero aleatorio entre 0 y 1

%Ejemplos
x = -6.421;
y = -1.87;
z = 2.234;
w = 7.75;
ceil(x)	% -6
ceil(z)	% 3
ceil(y)	% -1

fix(y)	% -1
fix(z)	% 2

floor(x) % -7
floor(w) % -7

mod(20,6)	%2
rem(20,6)	%2

round(x)	% -6
round(z)	% 2
round(w)	% 8

%Simulacion de un juego de dados
%El numero menor posible es 2, el mayor es 12

dados = round(10* rand() + 2)


%------------------------Funciones Trigonometrcas--------------------------------------%
sin(x)		%Calcula el valor del seno de x expresado en radianes
sind(x)		%Calcula el valor del seno de x expresado en grados sexagesimales
asin(x)		%Calcula el valor en radianes del arco seno de x
asind(x)	%Calcula el valor en grados sexadesimales del arco seno de x
sinh(x)		%Calcula el seno hiperbolico de x en radianes
asinh(x)	%Calcula el valor en radianes del arco seno hiperbolico de x

cos(x)		%Calcula el valor del coseno de x expresado en radianes
cosd(x)		%Calcula el valor del coseno de x expresado en grados sexagesimales
acos(x)		%Calcula el valor en radianes del arco coseno de x
acosd(x)	%Calcula el valor en grados sexadesimales del arco coseno de x
cosh(x)		%Calcula el coseno hiperbolico de x en radianes
acosh(x)	%Calcula el valor en radianes del arco cosseno hiperbolico de x

tan(x)		%Calcula el valor de la tangente de x expresado en radianes		
tand(x)		%Calcula el valor de la tangente de x expresado en grados sexagesimales
atan(x)		%Calcula el valor en radianes del arco tangente de x 
atand(x)	%Calcula el valor en grados sexagesimales del arco tangente de x
tanh(x)		%Calcula la tangente hiperbolica de x en radianes
atanh(x)	%Calcula el valor en radianes del arco tangente	 hiperbolico de x

cot(x)		%Calcula el valor de la cotangente de x expresado en radianes		
cotd(x)		%Calcula el valor de la cotangente de x expresado en grados sexagesimales
acot(x)		%Calcula el valor en radianes de la cotangente de x 
atand(x)	%Calcula el valor en grados sexagesimales del arco cotangente de x
coth(x)		%Calcula la cotangente hiperbolica de x en radianes
acoth(x)	%Calcula el valor en grados sexagesimales del arco cotangente hiperbolico de x

sec(x)		%Calcula el valor de la secante de x expresado en radianes		
secd(x)		%Calcula el valor de la secante de x expresado en grados sexagesimales
asec(x)		%Calcula el valor en radianes de la secante de x 
asecd(x)	%Calcula el valor en grados sexagesimales del arco secante de x
sech(x)		%Calcula la secante hiperbolica de x en radianes
asech(x)	%Calcula el valor en grados sexagesimales del arco secante hiperbolico de x

csc(x)		%Calcula el valor de la cosecante de x expresado en radianes		
cscd(x)		%Calcula el valor de la cosecante de x expresado en grados sexagesimales
acsc(x)		%Calcula el valor en radianes de la cosecante de x 
acscd(x)	%Calcula el valor en grados sexagesimales del arco cosecante de x
csch(x)		%Calcula la cosecante hiperbolica de x en radianes
acsch(x)	%Calcula el valor en grados sexagesimales del arco cosecante hiperbolico de x


%Seno de 150 grados es 0.500000000000000

%---------------------------Funciones logaritmicas y exponenciales-----------------------%
exp(x)			%Calcula el valor de e^x
expm1(x)		%Calcula el valor de e^x - 1
log(x)			%Calcula el valor del logaritmo natural de x
log10(x)		%Calcula el logaritmo en base 10 de x
log1p(x)		%Calcula el valor de log(1 + x)
log2(x)			%Calcula el logaritmo en base 2 de x
nthroot(x,n)	%Calcula la raiz n-esima de x 
sqrt(x)			%Calcula la raiz cuadrada de x

%--------------------------Funciones de matematica discreta---------------------------%
factor(x)		%Calcula los factores primos de x
factorial(x)	%Calcula el factorial de x
gcd(a, b)		%Calcula el maximo comun divisor de a y b
lcm(a,b)		%Calcula el minimo comun multiplo
isprime(x)		%Devuelve cero si x no es primo, 1 si x es primo
nchoosek(n, k)	%Calcula el numero de combinaciones de n tomados de k en k
primes(x)		%Calcula todos los numeros primos menores o iguales a x







