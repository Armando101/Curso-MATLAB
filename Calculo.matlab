%------Calculo diferencial---------

%--------Limite de una funcion
%Para calcular el limite de una funcion se usa la funcion limit

%Ejemplo:
syms x 
fx=x^2+5;
L=limit(fx, x, 2)	%Funcion fx cuando x tiende a 2

%Ejemplo:
fx=(x^2-4)/(x-2);
L=limit(fx,x,2)	%L=4

%Ejemplo:
fx=(2*x^4-12*x^3+19*x^2-18*x+24)/(x^3-4*x^2-4*x+16);
L=double(limit(fx,x,2))

%Ejemplo:
fx=(sqrt(3-x)-2)/(x+1);
L=double(limit(fx,x,-1))

%Ejemplo:
fx=(2*x^2+21)/(x^2-4*x+7);
L=limit(fx,x,inf)

%--------Derivadas en MATLAB----------
%Para derivar funciones f(x) con MATLAB se usa la funcion diff
diff(fx,x);		%Calcula la derivada de la funcion fx con respecto a x
diff(fxy,y)		%Calcula la derivada parcial de fxy con respecto a y
diff(fx,x,n)	%Calcula la n-esima derivada de fx con respecto a x
diff(fxy,y,n)	%Calcula la n-esima derivada parcial de fxy con respecto a y

%Ejemplos:

%Hallar la derivada de 3x+2
syms x
fx=3*x+2;
Dx=diff(fx,x)

%Hallar la derivada de x^2
fx=x^2;
Dx=diff(fx,x)

%Hallar la derivada de raiz cubica de x
fx=x^(1/3);
Dx=(fx,x)

%Hallar la derivada de f(x)=(x^3+2*x^2-1)(2*x^2+x)
fx=(x^3+2*x^2-1)*(2*x^2+x);
Dx=diff(fx,x)	%Muestra la derivada pero en este caso no es muy claro
Dx=expand(Dx)	%Esta funcion simplifica la derivada

%Hallar la derivada de f(x)=(x+1)/(x-1)
fx=(x+1)/(x-1);
Dx=diff(fx,x)	%En este caso la derivada no es muy clara
Dx=simplify(Dx)	%Esta funcion simplifica la derivada

%Usamos expand para las multiplicaciones y simplify para las divisiones

%Hallar la derivada de f(x)=10^(sqrt(x))
fx=(10^(sqrt(x)));
Dx=diff(fx,x)

%Hallar la derivada de f(x)=(sin(3*x))^3
fx=(sin(3*x))^3;
Dx=diff(fx,x)

%Hallar la derivada de f(x)=log(sqrt((1+sin(x))/(1-sin(x))))
fx=log(sqrt((1+sin(x))/(1-sin(x))));
Dx=diff(fx,x)
Dx=simplify(Dx)

%-----------Derivadas parciales--------

%Hallar la derivada parcial de f(x,y)=x^2*y-x*y^2+y^2
syms x
syms y
fxy=x^2*y-x*y^2+y^2;
Dy=(fxy,y)	%Derivada parcial de fxy con respecto a y
Dx=(fxy,x)	%Derivada parcial de fxy con respecto a x

%Hallar la derivada parcial de f(x,y,z)=2*x^2*y-(x*y^2)^(1/3)+3*sin(z^2)
syms x
syms y
syms z

fxyz=2*x^2*y-(x*y^2)^(1/3)+3*sin(z^2);
Dx=diff(fxyz,x)
Dx=diff(fxyz,y)
Dx=diff(fxyz,z)

%-------Integrales---------
%Para integrar funciones se usa la funcion int 

int(fx,x)		%Calcula la inegral indefinida de la funcion fx por diferencial de x
int(fx,x,a,b)	%Calcula la integral definida de la funcion fx por diferencial de x desde a hasta b

%Ejemplos:
%Hallar la integral indefinida de f(x)=3x+2
fx=3*x+2;
Fx=int(fx,x)	%En este caso la integral no es muy clara
Fx=expand(Fx)