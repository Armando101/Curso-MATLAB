%MATLAB usa la matematica simbolica (Symbolic math toolbox) para resolver diversos problemas de matematica, ingenieria y ciencias

%Creacion de variables simbolicas
syms x 	%Crea las variables x del tipo simbolico
f=x^2-3*x-2;	%Crea la variable f del tipo simbolico
y=sym('y');		%Crea las variables y del tipo simbolico
g=x^3+2*x;		%Crea la variable g del tipo simbolico

f=sym('x^2-3*x*y+z-2');	%Crea la variable f del tipo simbolico
f=x^2-3*x*y+z-2;

f=input('INGRESE FUNCION: ', 'S')	%La 'S' indica que reccibe una cadena
f=sym(f)

%---------Operaciones aritmeticas---------
%Para la multimplicacion, division y potenciacion se utilizan los operadores *, / y ^, pero acompaniados de la funcion expand

syms x
f-x^2+3*x-2;
g=5*x+3;

suma = f+g
resta = f-g
multi=expand(f*g)
divi=expand(f/g)
pot=expand(f^2)

%------Solucion de ecuaciones no lineales con variables simbolicas de la forma f(x)=0
%Si se tiene la ecuacion x^2-x-6=0 sus raices serian r1=-2, r2-3
syms x
y=x^2-x-6;
r=solve(y)	%r=[-2 3]

%Si se tiene la ecuacion x^2 + x + 16 = 0 sus raices son complejas y la funcion solve las expresaria de forma racional
%Para evitar eso usamos la funcion double

y=x^2+x+16=0;
r=double(solve(y))

%Ejemplo:
y=4^(3*x)-8^x-3;
r=double(solve(y))

%Ejemplo:
y=log10(16-x^2)/log10(3*x+4)+2^x-1622/217;
r=double(solve(y))

%-------Sistemas de ecuaciones lineales--------
A=[3 2 -1 0; 1 -3 -3 -1; 1 0 2 -3; 0 2 -2 5];
B=[1; -23; 13; -11];
X=A\B
%X=[-2 5 3 -3], X es un vector cuyos valores son las x

X=inv(A)*B	%Esta linea es igual a la 51

%Otra foma de solucionarlo es la siguiente
%Declaramos una sola matriz con todos los elementos 
Z=[3 2 -1 0 1; 1 -3 -3 -1 -23; 1 0 2 -3 13; 0 2 -2 5 -11];
X=rref(z)

%Otra forma de resolver
ec1=sym('3*x1+2*x2-x3=1');
ec2=sym('x1-3*x2-3*x3-x4=-23');
ec3=sym('x1+2*x3-3*x4=13');
ec4=sym('2*x2-2*x3+5*x4=-11');
[x1, x2, x3, x4]=solve(ec1, ec2, ec3, ec4)