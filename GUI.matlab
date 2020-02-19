GUI-Graphical User Interface
Corresponde al entorno de programacion Orientada a objetos.
Para ingresar a la ventana de edicion de GUI, en el prompt del MATLAB
se debe escribir
>> guide

Seleccionar blank GUI y cambiar en preferencias
-Show name in component pallet-

Para duplicar un objeto se usa ctl+d
Para cambiar el nombre de los objetos cambiamos la propiedad string

----Casteo---------
Cuando leemos en un texbox datos, estos se guardan como cadenas, para hacer operaciones con ellos
tenemos que pasarlos a double o num Ejemplo:

b='6.34'
z=str2double(b);	%z es un valor double
y=str2num(n);	

-------Propiedades Importante-----------
tag -> Muestra el nombre de nuestro objeto
enable -> Activa o desactiva el editbox


%El siguiente ejemplo muestra las funciones necesarias para hacer un programa que calcule la velocidad dada la distancia y tiempo

function pushbutton1_Callback(hObject, eventdata, handles)
	d=str2num(get(handles.edit1,'string'));
	t=str2num(get(handles.edit2,'string'));
	v=d/t;
	set(handles.edit3,'string',v);
%La funcion anterior se manda a llamar cuando se da click en el boton 1, en este caso se calcula la velocidad
%A la variable d se le asigna un valor el cual lo recibe como cadena y lo convierte a dato numerico
%Este dato numerico es la propiedad string de el edit text llamdo edit1 y edit2 para el tiempo
%Con la instruccion get obtenemos dichos datos
%Con la instruccion set colocamos la variable v en la propiedad string del edit tex llamdo edit3 


function pushbutton2_Callback(hObject, eventdata, handles)
	close;

%La funcion anterior lo que hace es cerrar la interface cuando hacemos click en dicho boton


%La siguiente funcion permite graficar 
function pushbutton1_Callback(hObject, eventdata, handles)
	fx=get(handles.edit1,'string');
	xmin=str2num(get(handles.edit2,'string'));
	xmax=str2num(get(handles.edit3,'string'));
	ezplot(fx, [xmin, xmax]);
	grid on
	grid minor
%La funcion ezplot recibe una funcion y un vector especificando sus falores minimos y maximos
%Posterior mente procede a graficarla