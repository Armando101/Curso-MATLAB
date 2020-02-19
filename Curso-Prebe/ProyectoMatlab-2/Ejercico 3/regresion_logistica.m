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

% 2)Función Sigmoide

% 3)Función Hipótesis
[h]=funcion_hipotesis(teta,m,x);
[h]=funcion_sigmoide(transpose(h));

%4) Función Costo
[h]=funcion_costo(m,h,y)

%5) Gradiente Función Costo
[costo]=gradiente_funcion_costo(m,h,y);

%6 Algoritmo de Optimización
tic
[teta]=funcion_algoritmo_optimizacion(teta,m,h,y,x);
toc

%7  Funcion Predecir
[prediccion]=funcion_predecir(teta,m,x)


