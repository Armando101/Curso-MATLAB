clc
clear
n=input('Ingrese un número \n');

A=rand(1,n);
A=ceil(A*100);
disp(A)
B=mod(A,2);
fprintf('Los número impares son: \n');
disp(A.*B)

C=mod(A+1, 2);
fprintf('Los números pares son: \n');
disp(A.*C)


tablero=zeros(8,8);
tablero(2:2:end,1:2:end)=1;    % Colocamos 1's en las filas impares y columnas pares
tablero(1:2:end,2:2:end)=1;
disp(tablero)
