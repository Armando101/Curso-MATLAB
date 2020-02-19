
clc
clear
fprintf('Una primera forma\n');
tablero=[0,1;1,0];
disp(repmat(tablero,4))

fprintf('Segunda forma\n');
tablero=zeros(8,8);
tablero(2:2:end,1:2:end)=1;    % Colocamos 1's en las filas impares y columnas pares
tablero(1:2:end,2:2:end)=1;
disp(tablero)
