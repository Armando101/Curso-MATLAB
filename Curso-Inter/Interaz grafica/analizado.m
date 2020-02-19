function varargout = analizado(varargin)
% ANALIZADO MATLAB code for analizado.fig
%      ANALIZADO, by itself, creates a new ANALIZADO or raises the existing
%      singleton*.
%
%      H = ANALIZADO returns the handle to a new ANALIZADO or the handle to
%      the existing singleton*.
%
%      ANALIZADO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ANALIZADO.M with the given input arguments.
%
%      ANALIZADO('Property','Value',...) creates a new ANALIZADO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before analizado_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to analizado_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help analizado

% Last Modified by GUIDE v2.5 10-Jan-2019 14:58:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @analizado_OpeningFcn, ...
                   'gui_OutputFcn',  @analizado_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before analizado is made visible.
function analizado_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to analizado (see VARARGIN)

% Choose default command line output for analizado
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes analizado wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = analizado_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in tipoAjuste.
function tipoAjuste_Callback(hObject, eventdata, handles)
% hObject    handle to tipoAjuste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns tipoAjuste contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tipoAjuste
contenido=cellstr(get(hObject,'String'));
tipo=contenido{get(hObject,'Value')};
switch(tipo)
    case 'Interpolación'
        set(handles.ajusteOpciones,'Visible',0);
        set(handles.interOpciones,'Visible',1);
        set(handles.clase,'String','Tipo');
    case 'Ajuste Polinomial'
        set(handles.ajusteOpciones,'Visible',1);
        set(handles.interOpciones,'Visible',0);
        set(handles.clase,'String','Grado del polinomio');
end

% --- Executes during object creation, after setting all properties.
function tipoAjuste_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tipoAjuste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in interOpciones.
function interOpciones_Callback(hObject, eventdata, handles)
% hObject    handle to interOpciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns interOpciones contents as cell array
%        contents{get(hObject,'Value')} returns selected item from interOpciones


% --- Executes during object creation, after setting all properties.
function interOpciones_CreateFcn(hObject, eventdata, handles)
% hObject    handle to interOpciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ingresar_datos_boton.
function ingresar_datos_boton_Callback(hObject, eventdata, handles)
% hObject    handle to ingresar_datos_boton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in ajusteOpciones.
function ajusteOpciones_Callback(hObject, eventdata, handles)
% hObject    handle to ajusteOpciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns ajusteOpciones contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ajusteOpciones


% --- Executes during object creation, after setting all properties.
function ajusteOpciones_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ajusteOpciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in realizarAjuste.
function realizarAjuste_Callback(hObject, eventdata, handles)
% hObject    handle to realizarAjuste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
contenido=cellstr(get(handles.tipoAjuste,'String'));
tipo=contenido{get(handles.tipoAjuste,'Value')};
x=str2num(get(handles.edit1,'String'));
y=str2num(get(handles.edit2,'String'));
switch(tipo)
    case 'Interpolación'
        contenidoInterpolacion=cellstr(get(handles.interOpciones,'String'));
        tipoInterpolacion=contenidoInterpolacion{get(handles.interOpciones,'Value')};
        switch(tipoInterpolacion)
            case 'Polinómica'
                c=polyfit(x,y,length(x)-1);
                z=linspace(min(x)-1,max(x)+1);
                p=polyval(c,z);
                axes(handles.axes2);
                plot(x,y,'ro',z,p);
            case 'Spline cúbico'
                z=linspace(min(x)-1,max(x)+1);
                s=spline(x,y,z);
                axes(handles.axes2);
                plot(x,y,'ro',z,s);     
        end
        
    case 'Ajuste Polinomial'
         grado=get(handles.ajusteOpciones,'Value');
         c=polyfit(x,y,grado);
         z=linspace(min(x)-1,max(x)+1);
         p=polyval(c,z);
         axes(handles.axes2);
         plot(x,y,'ro',z,p);
end




% --- Executes on button press in limpiar.
function limpiar_Callback(hObject, eventdata, handles)
% hObject    handle to limpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'String',[]);
set(handles.edit2,'String',[]);
cla(handles.axes2,'reset');



% --- Executes during object creation, after setting all properties.
function clase_CreateFcn(hObject, eventdata, handles)
% hObject    handle to clase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2
