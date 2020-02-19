% 1)Preprocesamiento
clc;
clear;
tabla=readtable('regresion_logistica.csv');
datos=table2array(tabla);
x=datos(:,[1,2]);
[m,n]=size(x);
x=cat(2,ones(m,1),x);
y=datos(:,3);
plot(x,'.');
teta=[-2,1,1];

% 2)Funci�n Sigmoide

% 3)Funci�n Hip�tesis
[h]=funcion_hipotesis(teta,m,x);
[h]=funcion_sigmoide(transpose(h));

%4) Funci�n Costo
[h]=funcion_costo(m,h,y)

%5) Gradiente Funci�n Costo
[costo]=gradiente_funcion_costo(m,h,y);

%6 Algoritmo de Optimizaci�n
tic
[teta]=funcion_algoritmo_optimizacion(teta,m,h,y,x);
toc

%7  Funcion Predecir
[prediccion]=funcion_predecir(teta,m,x)


