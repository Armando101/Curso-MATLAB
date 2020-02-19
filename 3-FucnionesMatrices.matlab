%-------------Funciones relacionadas con Vectores--------%
length(x)	%Determina el numero de elementos del vecotor x
sum(x)		%Calcula la suma de todos los elementos del vector x
prod(x)		%Calcula el producto de todos los elementos del vector x
sort(x)		%Ordena de menor a mayor los elementos del vector x		
max(x)		%Determina el mayor elemento del vector x
min(x)		%Determina el menor elemento del vector x
mean(x)		%Determina la media	o promedio de los elementos del vector x

%-------------Fucniones relacionadas con Matrices---------%
size(A)		%Determina el numero de filas y columnas de la matriz A
sum(A)		%Calcula la suma de cada columna de la matriz A
max(A)		%Determina el mayor elemento de cada columna de la matriz A
min(A)		%Determina el menor elemento de cada columna de la matriz A
trace(A)	%Calcula la traza de la matriz A (Suma de diagonal principal)
det(A)		%Calcula la Determinante de la matriz A
inv(A)		%Determina la inversa de la matriz A
diag(A)		%Extrae los elementos de la diagonal principal de la matriz A
tril(A)		%Construye una matriz triangular superior a partir de la matriz A
triu(A)		%Construye una matriz triangular inferior a partir de la matriz A
rot90(A)	%Hace rotar la matriz A 90 grados en setido antihorario
fliplr(A)	%Invierte la matriz A en su imagen horizontal	
flipud(A)	%Invierte la matriz A en su imagen vertical
transpose(A)%Determina la transpuesta de la matriz A, es equivalente a A'

%Para sumar todos los elementos de una matriz
sum(sum(A))