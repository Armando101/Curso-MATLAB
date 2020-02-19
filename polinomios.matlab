%Para representar un polinomio se usa un vector, Ejemplo: p(x)=5x^4-2x^3+x^2-3x+2
p=[5 -2 1 -3 2];
q=[2, 0, -3, 1, -5, 0];	%q(x)=2x^5-3x^3+x^2-5x
r=[3 0 0 0 0 0 -5];	%r(x)=3x^6-5

%Funciones:
polyval(p,x)	%Evalua el polinomio p en el punto x
roots(p)		%Calcula las raices del polinomio p (inclusive complejos)
poly(r)			%Calcula los coeficientes de un polinomio partiendo de sus raices

%Grafica de polinomios
%Graficar p(x)=2x^2-3x+5
x=linspace(-5,5,100);
y=polyval(p,x);
plot(x,y),grid on, grid minor

%Suma y resta de polinomios
%Los polinomios a sumar o restar tienen que tener la misma dimension
%Se tiene que rellenar con 0's para tener la misma dimension que el polinomio de mas alta dimension
p=[0 2 -1 0 2];
q=[5 -3 4 -3 0];
r=[5 -1 3 -2 -1];
t=p+q+r;

%--------------Multiplicacion de polinomios
%En este caso usaremos la funcion conv(p,q).
%Ejemplo:
p=[1 0 2 6 4 9];
q=[6 7 4 12 10];
m=conv(p,q)

p=[2 -3 4 -2];
q=[3 4 -5];
r=conv(p,q)

%-----------------------Division de polinomios
%para aplicar la operacion de division de polinomios se debe seguir los siguientes pasos:
%1.- Definir el polinomio dicidendo D(x) y el polinomio divisor d(x); ambos deben ser completos y ordenados
%2.- Para dividir polinomios se debe usar la funcion
%[q,r]=deconv(D,d), esta funcion retorna los coeficientes del cociente q(x) y el residuo r(x)
%Ejemplo:
D=[6 5 -26 33 -24 6];
d=[2 -3 1];
[q,r]=deconv(D,d)	%q=cociente, r=residuo

%-----Fracciones Parciales-----------
%Para aplicar la descomposicion en fracciones pparciales se deben seguir los siguientes pasos
%-Definir el polinomio numerador D(x) y el polinomio denominador d(x), ambos deben ser completos y ordenados
%-Para determinar las fracciones parciales se debe usar la funcion
[r,p,k]=residue(D,d), %Esta funcion retorna:
%Los coeficientes de los residuos r(x)
%La localizacion de los polos p(x)
%Los coeficientes del termino directo k(x)
%(r(1)/(x-p(1)))+(r(2)/(x-p(2)))+(r(3)/(x-p(3)))+...+(r(n)/(x-p(n)))+[k(1)x + k(2)]


%Ejemplo
D=[1 0 2 4 1];
d=[1 -1 -1 1];
[r,p,k]=residue(D,d);
%r=[1 2 -1]
%p=[1 1 -1]
%k=[1 1]

D=[7 3];
d=[1 3 -4];
[r,p,k]=residue(D,d);
%r=[5 4]
%p=[-4 1]
%k=[]
