function varargout = AnalisisNumerico(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AnalisisNumerico_OpeningFcn, ...
                   'gui_OutputFcn',  @AnalisisNumerico_OutputFcn, ...
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



function AnalisisNumerico_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;
guidata(hObject, handles);


function varargout = AnalisisNumerico_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


function funciones_Callback(hObject, eventdata, handles)
if strcmpi(get(handles.uipanel1, 'Visible'), 'on')
    set(handles.uipanel1, 'Visible', 'off');
    set(handles.uipanelFunc, 'Visible', 'on');
    set(handles.uipanelRai, 'Visible', 'off');
    set(handles.uipanelReg, 'Visible', 'off');
    set(handles.uipanelInter, 'Visible', 'off');
    set(handles.uipanelFou, 'Visible', 'off');
    set(handles.uipanelED,'Visible','off');
    set(handles.uipanelInterSeg,'Visible','off');
else
    set(handles.uipanel1, 'Visible', 'on');
    set(handles.uipanelFunc, 'Visible', 'off');
    set(handles.uipanelRai, 'Visible', 'off');
    set(handles.uipanelReg, 'Visible', 'off');
    set(handles.uipanelInter, 'Visible', 'off');
    set(handles.uipanelFou, 'Visible', 'off');
    set(handles.uipanelED,'Visible','off');
    set(handles.uipanelInterSeg,'Visible','off');
end


function Raices_Callback(hObject, eventdata, handles)
if strcmpi(get(handles.uipanel1, 'Visible'), 'on')
    set(handles.uipanel1, 'Visible', 'off');
    set(handles.uipanelFunc, 'Visible', 'off');
    set(handles.uipanelRai, 'Visible', 'on');
    set(handles.uipanelReg, 'Visible', 'off');
    set(handles.uipanelInter, 'Visible', 'off');
    set(handles.uipanelFou, 'Visible', 'off');
    set(handles.uipanelED,'Visible','off');
    set(handles.uipanelInterSeg,'Visible','off');
else
    set(handles.uipanel1, 'Visible', 'on');
    set(handles.uipanelFunc, 'Visible', 'off');
    set(handles.uipanelRai, 'Visible', 'off');
    set(handles.uipanelReg, 'Visible', 'off');
    set(handles.uipanelInter, 'Visible', 'off');
    set(handles.uipanelFou, 'Visible', 'off');
    set(handles.uipanelED,'Visible','off');
    set(handles.uipanelInterSeg,'Visible','off');
end


function interpolacion_Callback(hObject, eventdata, handles)
if strcmpi(get(handles.uipanel1, 'Visible'), 'on')
    set(handles.uipanel1, 'Visible', 'off');
    set(handles.uipanelFunc, 'Visible', 'off');
    set(handles.uipanelRai, 'Visible', 'off');
    set(handles.uipanelReg, 'Visible', 'off');
    set(handles.uipanelInter, 'Visible', 'on');
    set(handles.uipanelFou, 'Visible', 'off');
    set(handles.uipanelED,'Visible','off');
    set(handles.uipanelInterSeg,'Visible','off');
else
    set(handles.uipanel1, 'Visible', 'on');
    set(handles.uipanelFunc, 'Visible', 'off');
    set(handles.uipanelRai, 'Visible', 'off');
    set(handles.uipanelReg, 'Visible', 'off');
    set(handles.uipanelInter, 'Visible', 'off');
    set(handles.uipanelFou, 'Visible', 'off');
    set(handles.uipanelED,'Visible','off');
    set(handles.uipanelInterSeg,'Visible','off');
end



function regresion_Callback(hObject, eventdata, handles)
if strcmpi(get(handles.uipanel1, 'Visible'), 'on')
    set(handles.uipanel1, 'Visible', 'off');
    set(handles.uipanelFunc, 'Visible', 'off');
    set(handles.uipanelRai, 'Visible', 'off');
    set(handles.uipanelReg, 'Visible', 'on');
    set(handles.uipanelInter, 'Visible', 'off');
    set(handles.uipanelFou, 'Visible', 'off');
    set(handles.uipanelED,'Visible','off');
    set(handles.uipanelInterSeg,'Visible','off');
else
    set(handles.uipanel1, 'Visible', 'on');
    set(handles.uipanelFunc, 'Visible', 'off');
    set(handles.uipanelRai, 'Visible', 'off');
    set(handles.uipanelReg, 'Visible', 'off');
    set(handles.uipanelInter, 'Visible', 'off');
    set(handles.uipanelFou, 'Visible', 'off');
    set(handles.uipanelED,'Visible','off');
    set(handles.uipanelInterSeg,'Visible','off');
end



function FourierAudio_Callback(hObject, eventdata, handles)
if strcmpi(get(handles.uipanel1, 'Visible'), 'on')
    set(handles.uipanel1, 'Visible', 'off');
    set(handles.uipanelFunc, 'Visible', 'off');
    set(handles.uipanelRai, 'Visible', 'off');
    set(handles.uipanelReg, 'Visible', 'off');
    set(handles.uipanelInter, 'Visible', 'off');
    set(handles.uipanelFou, 'Visible', 'on');
    set(handles.uipanelED,'Visible','off');
    set(handles.uipanelInterSeg,'Visible','off');
else
    set(handles.uipanel1, 'Visible', 'on');
    set(handles.uipanelFunc, 'Visible', 'off');
    set(handles.uipanelRai, 'Visible', 'off');
    set(handles.uipanelReg, 'Visible', 'off');
    set(handles.uipanelInter, 'Visible', 'off');
    set(handles.uipanelFou, 'Visible', 'off');
    set(handles.uipanelED,'Visible','off');
    set(handles.uipanelInterSeg,'Visible','off');
end


% --- Executes on button press in Exponencial.
function Exponencial_Callback(hObject, eventdata, handles)
%if strcmpi(get(handles.uipanelFunc, 'Visible'), 'on')
% Numero de terminos de la serie
cla;
n=10;
% Cambio de formato para visualizar mas cifras significativas
format long;
switch get(get(handles.uibuttongroupxSelec,'SelectedObject'),'Tag')
    case 'radiobuttonx05'
        x=0.5;
    case 'radiobuttonx15'
        x=1.5;
    case 'radiobuttonx25'
        x=2.5;
end

% Valor de aproximación de x
% Valor verdadero
Vv=exp(x)
% Primera aproximación
e_x=(x^0)/factorial(0);
Vaprox=e_x;
Vact=e_x;
Vant=0;
Ev=abs((Vv-Vaprox)/Vv)*100;
Ea=abs((Vact-Vant)/Vact)*100;
% Ciclo para las aproximaciones 2 hasta n
for m=1:(n-1)
    Vant=Vact;
    e_x=e_x+((x^m)/(factorial(m)));
    Vact=e_x;
    Vaprox=e_x;
    Ev_new=abs((Vv-Vaprox)/Vv)*100;
    Ev=[Ev,Ev_new];
    Ea_new=abs((Vact-Vant)/Vact)*100;
    Ea=[Ea,Ea_new];
end
axes(handles.axes1)
plot(Ea,'LineWidth',2);
title('Grafica del Error Aproximado');
xlabel('Numero de terminos de la serie');
ylabel('Valor porcentual del Error Aproximado');
hold on;
plot(Ev,'r','LineWidth',2);
title('Grafica del Error Verdadero');
xlabel('Numero de terminos de la serie');
ylabel('Valor porcentual del Error Verdadero');
grid on;

%else
%    set(handles.uipanel1, 'Visible', 'on');

% hObject    handle to Exponencial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Seno.
function Seno_Callback(hObject, eventdata, handles)
% Numero de terminos de la serie
cla;
n=10;
% Cambio de formato para visualizar mas cifras significativas
format long;
switch get(get(handles.uibuttongroupxSelec,'SelectedObject'),'Tag')
    case 'radiobuttonx05'
        x=0.5;
    case 'radiobuttonx15'
        x=1.5;
    case 'radiobuttonx25'
        x=2.5;
end


% Valor de aproximación de x

% Valor verdadero de sin(x)
Vv=sin(x)
% Primera aproximación
sin_x=(x^1)/factorial(1);
% con el termino X


Vaprox=sin_x;
Vact=sin_x;
Vant=0;
Ev=abs((Vv-Vaprox)/Vv)*100;
Ea=abs((Vact-Vant)/Vact)*100;
k=1;

% Ciclo para las aproximaciones 2 hasta n
% que empieza en 1 y va de 2 en dos
Vant=Vact;

for m=3:2:(n-1)
    Vant=Vact;
    
    sin_x=sin_x+(-k*(x)^m)/(factorial(m));
    
    Vact=sin_x;
    Vaprox=sin_x;
    Ev_new=abs((Vv-Vaprox)/Vv)*100;
    Ev=[Ev,Ev_new];
    Ea_new=abs((Vact-Vant)/Vact)*100;
    Ea=[Ea,Ea_new];
    k=k*(-1);
    
end

axes(handles.axes1)
plot(Ea,'LineWidth',2);
title('Grafica del Error Aproximado');
xlabel('Numero de terminos de la serie');
ylabel('Valor porcentual del Error Aproximado');
hold on;
plot(Ev,'r','LineWidth',2);
title('Grafica del Error Verdadero');
xlabel('Numero de terminos de la serie');
ylabel('Valor porcentual del Error Verdadero');
grid on;
% hObject    handle to Seno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Coseno.
function Coseno_Callback(hObject, eventdata, handles)
 % Numero de terminos de la serie
%clear all;
%close all;
switch get(get(handles.uibuttongroupxSelec,'SelectedObject'),'Tag')
    case 'radiobuttonx05'
        x=0.5;
    case 'radiobuttonx15'
        x=1.5;
    case 'radiobuttonx25'
        x=2.5;
end
        
cla;
n=10;

% Cambio de formato para visualizar mas cifras significativas
format long;

% Valor de aproximación de x

% Valor verdadero de cos(x)
Vv=cos(x);
% Primera aproximación
cos_x=(x^0)/factorial(0);
% con el termino 1

Vaprox=cos_x;
Vact=cos_x;
Vant=0;
Ev=abs((Vv-Vaprox)/Vv)*100;
Ea=abs((Vact-Vant)/Vact)*100;
k=1;

% Ciclo para las aproximaciones 2 hasta n
% que empieza en 1 y va de 2 en dos
for m=2:2:(n-1)
    
    Vant=Vact;
    % El valor empieza en positivio y alterna
    cos_x=cos_x+(-k*((x)^m))/(factorial(m));
    
    Vact=cos_x;
    Vaprox=cos_x;
    Ev_new=abs((Vv-Vaprox)/Vv)*100;
    Ev=[Ev,Ev_new];
    Ea_new=abs((Vact-Vant)/Vact)*100;
    Ea=[Ea,Ea_new];
    k=k*(-1);

    
end

axes(handles.axes1)
plot(Ea,'LineWidth',2);
title('Grafica del Error Aproximado');
xlabel('Numero de terminos de la serie');
ylabel('Valor porcentual del Error Aproximado');
hold on;
plot(Ev,'r','LineWidth',2);
title('Grafica del Error Verdadero');
xlabel('Numero de terminos de la serie');
ylabel('Valor porcentual del Error Verdadero');
grid on;
% hObject    handle to Coseno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Bisec.
function Bisec_Callback(hObject, eventdata, handles)
cla(handles.axes3);
cla(handles.axes4);
switch get(get(handles.funcGroup,'SelectedObject'),'Tag')
    case 'cosFunc'
        f=@(x) cos(x);
        xl=0.1;
        xu=2;
        e=0.0001;
        n=50;
    case 'x1Func'
        f=@(x) (x.^10)-1;
        xl=0.1;
        xu=1.3;
        e=0.0001;
        n=50;
    case 'x2Func'
        f=@(x) (-0.01)*((25-x).^2)+5;
        xl=0.5;
        xu=4;
        e=0.0001;
        n=50;
end
[xr,ye,cont]=Bisec(f,e,n,xl,xu);
x=xl:0.001:xu;
cont=1:1:cont;
%subplot(121);
axes(handles.axes3)
plot(xr,f(xr),'*r','LineWidth',2);
hold on;
plot(x,f(x),'g','LineWidth',2);
xlabel('X')
ylabel('f(X)')
%subplot(122);
axes(handles.axes4)
plot(cont,ye,'--c','LineWidth',2);
xlabel('Iteraciones')
ylabel('Error')
% axes(handles.axes3)
% plot(xe, f(xe),'-b');
% title('Método Bisección');
% xlabel('X')
% ylabel('f(X)')
% hold on;
% plot(xr,f(xr),'or');



%%
%FUNCION BISECCION


% hObject    handle to Bisec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in NewtRap.
function NewtRap_Callback(hObject, eventdata, handles)
cla(handles.axes3);
cla(handles.axes4);
switch get(get(handles.funcGroup,'SelectedObject'),'Tag')
    case 'cosFunc'
        f=@(x) cos(x);
        xl=0.1;
        xu=2;
        e=0.0001;
        n=50;
    case 'x1Func'
        f=@(x) (x.^10)-1;
        xl=0.1;
        xu=1.3;
        e=0.0001;
        n=50;
    case 'x2Func'
        f=@(x) (-0.01)*((25-x).^2)+5;
        xl=0.5;
        xu=4;
        e=0.0001;
        n=50;
end
[xr,ye,cont]=NewtonRaphson(f,e,n,xl);
x=xl:0.001:xu;
cont=1:1:cont;
%subplot(121);
axes(handles.axes3)
plot(xr,f(xr),'*r','LineWidth',2);
hold on;
plot(x,f(x),'g','LineWidth',2);
xlabel('X')
ylabel('f(X)')
%subplot(122);
axes(handles.axes4)
plot(cont,ye,'--c','LineWidth',2);
xlabel('Iteraciones')
ylabel('Error')
% hObject    handle to NewtRap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in puntoFijo.
function puntoFijo_Callback(hObject, eventdata, handles)
cla(handles.axes3);
cla(handles.axes4);
switch get(get(handles.funcGroup,'SelectedObject'),'Tag')
    case 'cosFunc'
        f=@(x) cos(x);
        xl=0.1;
        xu=2;
        e=0.0001;
        n=50;
    case 'x1Func'
        f=@(x) (x.^10)-1;
        xl=0.1;
        xu=1.3;
        e=0.0001;
        n=50;
    case 'x2Func'
        f=@(x) (-0.01)*((25-x).^2)+5;
        xl=0.5;
        xu=4;
        e=0.0001;
        n=50;
end
[xr,ye,cont]=puntoFijo(f,e,n);
x=xl:0.001:xu;
cont=1:1:cont;
%subplot(121);
axes(handles.axes3)
plot(xr,f(xr),'*r','LineWidth',2);
hold on;
plot(x,f(x),'g','LineWidth',2);
xlabel('X')
ylabel('f(X)')
%subplot(122);
axes(handles.axes4)
plot(cont,ye,'--c','LineWidth',2);
xlabel('Iteraciones')
ylabel('Error')
% hObject    handle to puntoFijo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in RaiMult.
function RaiMult_Callback(hObject, eventdata, handles)
cla(handles.axes3);
cla(handles.axes4);
switch get(get(handles.funcGroup,'SelectedObject'),'Tag')
    case 'cosFunc'
        f=@(x) cos(x);
        xl=0.1;
        xu=2;
        e=0.0001;
        n=50;
    case 'x1Func'
        f=@(x) (x.^10)-1;
        xl=0.1;
        xu=1.3;
        e=0.0001;
        n=50;
    case 'x2Func'
        f=@(x) (-0.01)*((25-x).^2)+5;
        xl=0.5;
        xu=4;
        e=0.0001;
        n=50;
end
[xr,ye,cont]=raicesMultiples(f,e,n,xl);
x=xl:0.001:xu;
cont=1:1:cont;
%subplot(121);
axes(handles.axes3)
plot(xr,f(xr),'*r','LineWidth',2);
hold on;
plot(x,f(x),'g','LineWidth',2);
xlabel('X')
ylabel('f(X)')
%subplot(122);
axes(handles.axes4)
plot(cont,ye,'--c','LineWidth',2);
xlabel('Iteraciones')
ylabel('Error')
% hObject    handle to RaiMult (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in secante.
function secante_Callback(hObject, eventdata, handles)
cla(handles.axes3);
cla(handles.axes4);
switch get(get(handles.funcGroup,'SelectedObject'),'Tag')
    case 'cosFunc'
        f=@(x) cos(x);
        xl=0.1;
        xu=2;
        e=0.0001;
        n=50;
    case 'x1Func'
        f=@(x) (x.^10)-1;
        xl=0.1;
        xu=1.3;
        e=0.0001;
        n=50;
    case 'x2Func'
        f=@(x) (-0.01)*((25-x).^2)+5;
        xl=0.5;
        xu=4;
        e=0.0001;
        n=50;
end
[xr,ye,cont]=Secante(f,e,n,xl,xu);
x=xl:0.001:xu;
cont=1:1:cont;
%subplot(121);
axes(handles.axes3)
plot(xr,f(xr),'*r','LineWidth',2);
hold on;
plot(x,f(x),'g','LineWidth',2);
xlabel('X')
ylabel('f(X)')
%subplot(122);
axes(handles.axes4)
plot(cont,ye,'--c','LineWidth',2);
xlabel('Iteraciones')
ylabel('Error')
% hObject    handle to secante (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in reglaFalsa.
function reglaFalsa_Callback(hObject, eventdata, handles)
cla(handles.axes3);
cla(handles.axes4);
switch get(get(handles.funcGroup,'SelectedObject'),'Tag')
    case 'cosFunc'
        f=@(x) cos(x);
        xl=0.1;
        xu=2;
        e=0.0001;
        n=50;
    case 'x1Func'
        f=@(x) (x.^10)-1;
        xl=0.1;
        xu=1.3;
        e=0.0001;
        n=50;
    case 'x2Func'
        f=@(x) (-0.01)*((25-x).^2)+5;
        xl=0.5;
        xu=4;
        e=0.0001;
        n=50;
end
[xr,ye,cont]=reglaFalsa(f,e,n,xl,xu);
x=xl:0.001:xu;
cont=1:1:cont;
%subplot(121);
axes(handles.axes3)
plot(xr,f(xr),'*r','LineWidth',2);
hold on;
plot(x,f(x),'g','LineWidth',2);
xlabel('X')
ylabel('f(X)')
%subplot(122);
axes(handles.axes4)
plot(cont,ye,'--c','LineWidth',2);
xlabel('Iteraciones')
ylabel('Error')
% hObject    handle to reglaFalsa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in atras.
function atras_Callback(hObject, eventdata, handles)
if strcmpi(get(handles.uipanel1, 'Visible'), 'on')
    set(handles.uipanel1, 'Visible', 'on');
    set(handles.uipanelFunc, 'Visible', 'off');
    set(handles.uipanelRai, 'Visible', 'off');
    set(handles.uipanelReg, 'Visible', 'off');
    set(handles.uipanelInter, 'Visible', 'off');
    set(handles.uipanelFou, 'Visible', 'off');
    set(handles.uipanelED,'Visible','off');
    set(handles.uipanelInterSeg,'Visible','off');
else
    set(handles.uipanel1, 'Visible', 'on');
    set(handles.uipanelFunc, 'Visible', 'off');
    set(handles.uipanelRai, 'Visible', 'off');
    set(handles.uipanelReg, 'Visible', 'off');
    set(handles.uipanelInter, 'Visible', 'off');
    set(handles.uipanelFou, 'Visible', 'off');
    set(handles.uipanelED,'Visible','off');
    set(handles.uipanelInterSeg,'Visible','off');
end
% hObject    handle to atras (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushLin.
function pushLin_Callback(hObject, eventdata, handles)
cla(handles.axes8);
switch get(get(handles.conjuntosGroup,'SelectedObject'),'Tag')
    case 'conj1'
        data=[1 3; 
              2 7;
              3 12;
              4 16;
              5 22;
              6 28;
              7 34;
              8 42;
              9 56;
              10 70];
    case 'conj2'
        data=[1 -10; 
              2 -7;
              3 -3;
              4 0;
              5 4;
              6 8;
              7 12];
    case 'conj3'
        data=[1 3; 
              2 7;
              3 12;
              4 15;
              5 20;
              6 24;
              7 12;
              8 8;
              9 6];
end
[c1,c0] =RegresionCubica(data);
x=1:50;
fx3=c1.*x+c0;
axes(handles.axes8)
plot(fx3,'k','LineWidth',2);
xlabel('x')
ylabel('f(x)')
ti=[num2str(c1),'x + ',num2str(c0)];
title(ti);
% hObject    handle to pushLin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushCuad.
function pushCuad_Callback(hObject, eventdata, handles)
cla(handles.axes8);
switch get(get(handles.conjuntosGroup,'SelectedObject'),'Tag')
    case 'conj1'
        data=[1 3; 
              2 7;
              3 12;
              4 16;
              5 22;
              6 28;
              7 34;
              8 42;
              9 56;
              10 70];
    case 'conj2'
        data=[1 -10; 
              2 -7;
              3 -3;
              4 0;
              5 4;
              6 8;
              7 12];
    case 'conj3'
        data=[1 3; 
              2 7;
              3 12;
              4 15;
              5 20;
              6 24;
              7 12;
              8 8;
              9 6];
end
[b2,b1,b0] =RegresionCubica(data);
x=1:50;
fx2=b2.*x.^2+b1.*x+b0;
axes(handles.axes8)
plot(fx2,'k','LineWidth',2);
xlabel('x')
ylabel('f(x)')
ti=[num2str(b2),'x^2 + ',num2str(b1),'x + ',num2str(b0)];
title(ti);
% hObject    handle to pushCuad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushCub.
function pushCub_Callback(hObject, eventdata, handles)
cla(handles.axes8);
switch get(get(handles.conjuntosGroup,'SelectedObject'),'Tag')
    case 'conj1'
        data=[1 3; 
              2 7;
              3 12;
              4 16;
              5 22;
              6 28;
              7 34;
              8 42;
              9 56;
              10 70];
    case 'conj2'
        data=[1 -10; 
              2 -7;
              3 -3;
              4 0;
              5 4;
              6 8;
              7 12];
    case 'conj3'
        data=[1 3; 
              2 7;
              3 12;
              4 15;
              5 20;
              6 24;
              7 12;
              8 8;
              9 6];
end
[c3,c2,c1,c0] =RegresionCubica(data);
x=1:50;
fx3=c3.*x.^3+c2.*x.^2+c1.*x+c0;
axes(handles.axes8)
plot(fx3,'k','LineWidth',2);
xlabel('x')
ylabel('f(x)')
ti=[num2str(c3),'x^3 + ',num2str(c2),'x^2 + ',num2str(c1),'x + ',num2str(c0)];
title(ti);
% hObject    handle to pushCub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushFou1D.
function pushFou1D_Callback(hObject, eventdata, handles)
% hObject    handle to pushFou1D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushFouAudio.
function pushFouAudio_Callback(hObject, eventdata, handles)
%% Procesamiento de una señal de audio usando MATLAB
%% Selección del tipo de filtrado
% 1 -> Pasa bajo
% 2 -> Pasa alto
% 3 -> Pasa banda
%tipo=2;
switch get(get(handles.uibuttongroupFiltros,'SelectedObject'),'Tag')
    case 'radiobuttonpasaAltas'
        tipo=2;
    case 'radiobuttonpasaBajas'
        tipo=1;
    case 'radiobuttonpasaBandas'
        tipo=3;
end

%% Leer la señal de audio
[y,fs]=audioread('Yabu_mono.wav');
% y -> muestras de la señal
% fs-> frecuencia de muestreo
% Graficar la señal original
%subplot(411)
T=length(y)/fs;
t=linspace(0,T,T*fs);
axes(handles.axes25)
plot(t,y)
title('SEÑAL ORIGINAL Y SU ESPECTRO')% Título
xlabel('Tiempo (s)')         % Etiqueta del eje X
ylabel('Amplitud (V)')      % Etiqueta del eje Y
% xlim([0 20/])            % Límite de la señal



%% Reproducir la señal de audio
% wavplay(0.1*y,fs)


%% FFT de la señal
% Llamado a la función que calcula la FFT
axes(handles.axes24)
fft_signal(y,fs);
%title('ESPECTRO DE LA SEÑAL ORIGINAL')
xlim([0 4e3])
%% Filtrado de la señal
switch tipo
    case 1
        % Cálculo de los coeficientes del filtro (filtro pasa bajas)
        % Este filtrado deja solo la señal por debajo de 500 Hz        
        titulo='FILTRO PASA BAJAS';
        % Frecuencia normalizada
        fNorm = 1000 / (fs/2);
        [b,a] = butter(10, fNorm, 'low');
    case 2
        %- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        % Cálculo de los coeficientes del filtro (filtro pasa altas)
        % Este filtrado deja solo la señal por encima de 500 Hz
        titulo='FILTRO PASA ALTAS';
        % Frecuencia normalizada
        fNorm = 1000 / (fs/2);
        [b,a] = butter(10, fNorm, 'high');
    otherwise
        %- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        % Cálculo de los coeficientes del filtro (filtro pasa banda)
        % Este filtrado deja solo la señal de 2KHz a 3KHz
        % Frecuencias normalizadas
        titulo='FILTRO PASA BANDA';
        Wp = [2e3 3e3]/(fs/2); Ws = [1.5e3 3.5e3]/(fs/2);
        Rp = 3; Rs = 40; % Rizado de la banda de paso y de parada (s)
        [n,Wn] = buttord(Wp,Ws,Rp,Rs);% Orden del filtro y frecuencia de corte óptima
        [b,a] = butter(n,Wn);      % Coeficientes del filtro        
        %- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
end
% Filtrado de la señal
y_Low = filtfilt(b, a, y);
% Graficación de la señal en el tiempo
axes(handles.axes23)
plot(t,y_Low)
title('SEÑAL FILTRADA Y SU ESPECTRO')
xlabel('Tiempo (s)')
ylabel('Amplitud (V)')
% xlim([0 20/f0])
% Graficación de la señal en frecuencia
axes(handles.axes19)
% Llamado a la función que calcula la FFT
fft_signal(y_Low,fs);
%title('ESPECTRO DE LA SEÑAL FILTRADA')
xlim([0 4e3])


% %% Gráficas del filtro
% % Respuesta en frecuencia del filtro
% [H,w]=freqz(b,a,512,fs);
% %Trazado de la respuesta en Magnitud
% axes(handles.axes28)
% plot(w,20*log10(abs(H)));
% grid on;
% title ([titulo, ' Respuesta en magnitud']);
% xlabel('Frecuencia (Hz)');
% ylabel('H(f) db')
% xlim([0 5e3])
% % Respuesta en fase
% axes(handles.axes27)
% plot(w,angle(H));
% grid on;
% title ([titulo,' Respuesta en fase']);
% xlabel('Frecuencia (Hz)')
% ylabel('ángulo de H rad')
% xlim([0 5e3])
% %Respuesta al impulso
% axes(handles.axes29)
% [y_eje,tt]= impz(b,a,60);
% stem(tt,y_eje);
% title ([titulo,' Respuesta al impulso']);
% xlabel('n')
% ylabel('h[n]')
% %Ploteo de los polos y ceros
% z= roots(b);   % Ceros
% p = roots(a);  % Polos
% axes(handles.axes26)
% zplane(z,p)
% title('Polos y ceros')
% legend('Ceros','Polos')



%% Reproducción de audio de entrada y salida
pause(2)
disp('Audio de entrada')
% Se multiplica por 0.2 para atenuar la salida del tono por la bocina
%   wavplay(0.2*y,fs)
disp('Audio de salida (señal filtrada)')
% Se multiplica por 0.2 para atenuar la salida del tono por la bocina
%  wavplay(0.2*y_Low,fs)

% hObject    handle to pushFouAudio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushInter.
function pushInter_Callback(hObject, eventdata, handles)
cla(handles.axes10);
cla(handles.axes17);
cla(handles.axes16);
switch get(get(handles.uibuttongroupCondiciones,'SelectedObject'),'Tag')
    case 'radiobuttonCosConj1'
        x1=1;
        x2=[1 5];
        x3=[1 3 5];
        name='coseno';
    case 'radiobuttonSenConj'
        x1=1;
        x2=[1 5];
        x3=[1 3 5];
        name='seno';
    case 'radiobuttonExpConj1'
        x1=1;
        x2=[1 5];
        x3=[1 3 5];
        name='exponencial';
    case 'radiobuttonCosConj2'
        x1=2;
        x2=[2 4];
        x3=[1.5 4 5.5];
        name='coseno';
    case 'radiobuttonSenConj2'
        x1=2;
        x2=[2 4];
        x3=[1.5 4 5.5];
        name='seno';
    case 'radiobuttonExpConj2'
        x1=2;
        x2=[2 4];
        x3=[1.5 4 5.5];
        name='exponencial';
end
axes(handles.axes10)
f1=NWInterpolacionLineal(x1,name);
title('Interpolación lineal');
axes(handles.axes17)
f2=NWInterpolacionCuadratica(x2,name);
title('Interpolación cuadrática');
axes(handles.axes16)
f3=NWInterpolacionCubica(x3,name);
title('Interpolación cúbica');
% hObject    handle to pushInter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushSegmen.
function pushSegmen_Callback(hObject, eventdata, handles)

% hObject    handle to pushSegmen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushCuParam.
function pushCuParam_Callback(hObject, eventdata, handles)
% hObject    handle to pushCuParam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushFigCer.
function pushFigCer_Callback(hObject, eventdata, handles)
% hObject    handle to pushFigCer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in cosMetodos.
function cosMetodos_Callback(hObject, eventdata, handles)
% hObject    handle to cosMetodos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cosMetodos


% --- Executes on button press in xdecMetodos.
function xdecMetodos_Callback(hObject, eventdata, handles)
% hObject    handle to xdecMetodos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of xdecMetodos


% --- Executes on button press in xMetodos.
function xMetodos_Callback(hObject, eventdata, handles)
% hObject    handle to xMetodos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of xMetodos


% --- Executes during object creation, after setting all properties.
function funcGroup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to funcGroup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes when selected object is changed in funcGroup.
function funcGroup_SelectionChangedFcn(hObject, eventdata, handles)

% hObject    handle to the selected object in funcGroup 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton47.
function pushbutton47_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ed.
function ed_Callback(hObject, eventdata, handles)
if strcmpi(get(handles.uipanel1, 'Visible'), 'on')
    set(handles.uipanel1, 'Visible', 'off');
    set(handles.uipanelFunc, 'Visible', 'off');
    set(handles.uipanelRai, 'Visible', 'off');
    set(handles.uipanelReg, 'Visible', 'off');
    set(handles.uipanelInter, 'Visible', 'off');
    set(handles.uipanelFou, 'Visible', 'off');
    set(handles.uipanelED,'Visible','on');
    set(handles.uipanelInterSeg,'Visible','off');
else
    set(handles.uipanel1, 'Visible', 'on');
    set(handles.uipanelFunc, 'Visible', 'off');
    set(handles.uipanelRai, 'Visible', 'off');
    set(handles.uipanelReg, 'Visible', 'off');
    set(handles.uipanelInter, 'Visible', 'off');
    set(handles.uipanelFou, 'Visible', 'off');
    set(handles.uipanelED,'Visible','off');
    set(handles.uipanelInterSeg,'Visible','off');
end
% hObject    handle to ed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushHeun.
function pushHeun_Callback(hObject, eventdata, handles)
cla(handles.axes12);
cla(handles.axes14);
cla(handles.axes15);
switch get(get(handles.pasos,'SelectedObject'),'Tag')
    case 'paso05'
        paso=0.5;
    case 'paso01'
        paso=0.1;
    case 'paso001'
        paso=0.01;
end
[eT,e,y,yr]=Heun(paso);

x = 0:paso:4;
axes(handles.axes12)
plot(x,y,'--','Color','r'); %Euler
hold on;
plot(x, yr,'-','Color','k');%Real
%plot(x_aux,y_aux, 'k')
hold on


xlabel('Valor de X'); ylabel('Valor de Y');
title('Valor verdadero vs valor estimado');
%legend('Euler','Real','Location','southeast');

axes(handles.axes14)
plot(e,'--*','Color','r'); 
xlabel('Valor en X');
ylabel('Error relativo'); 
%title('Error relativo');

axes(handles.axes15)
plot(eT,'--*','Color','r'); 
xlabel('Valor en X');
ylabel('Error de truncamiento'); 
%title('Error Truncamiento');
% hObject    handle to pushHeun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushpuntoMedio.
function pushpuntoMedio_Callback(hObject, eventdata, handles)
cla(handles.axes12);
cla(handles.axes14);
cla(handles.axes15);
switch get(get(handles.pasos,'SelectedObject'),'Tag')
    case 'paso05'
        paso=0.5;
    case 'paso01'
        paso=0.1;
    case 'paso001'
        paso=0.01;
end
[eT,e,y,yr]=punto_Medio(paso);

x = 0:paso:4;
axes(handles.axes12)
plot(x,y,'--','Color','r'); %Euler
hold on;
plot(x, yr,'-','Color','k');%Real
%plot(x_aux,y_aux, 'k')
hold on


xlabel('Valor de X'); ylabel('Valor de Y');
title('Valor verdadero vs valor estimado');
%legend('Euler','Real','Location','southeast');

axes(handles.axes14)
plot(e,'--*','Color','r'); 
xlabel('Valor en X');
ylabel('Error relativo'); 
%title('Error relativo');

axes(handles.axes15)
plot(eT,'--*','Color','r'); 
xlabel('Valor en X');
ylabel('Error de truncamiento'); 
%title('Error Truncamiento');
% hObject    handle to pushpuntoMedio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushEuler.
function pushEuler_Callback(hObject, eventdata, handles)
cla(handles.axes12);
cla(handles.axes14);
cla(handles.axes15);
switch get(get(handles.pasos,'SelectedObject'),'Tag')
    case 'paso05'
        paso=0.5;
    case 'paso01'
        paso=0.1;
    case 'paso001'
        paso=0.01;
end
[eT,e,y,yr]=euler_ed(paso);

x = 0:paso:4;
axes(handles.axes12)
plot(x,y,'--','Color','r'); %Euler
hold on;
plot(x, yr,'-','Color','k');%Real
%plot(x_aux,y_aux, 'k')
hold on


xlabel('Valor de X'); ylabel('Valor de Y');
title('Valor verdadero vs valor estimado');
%legend('Euler','Real','Location','southeast');

axes(handles.axes14)
plot(e,'--*','Color','r'); 
xlabel('Valor en X');
ylabel('Error relativo'); 
%title('Error relativo');

axes(handles.axes15)
plot(eT,'--*','Color','r'); 
xlabel('Valor en X');
ylabel('Error de truncamiento'); 
%title('Error Truncamiento');
% hObject    handle to pushEuler (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttonInterSeg.
function pushbuttonInterSeg_Callback(hObject, eventdata, handles)
if strcmpi(get(handles.uipanel1, 'Visible'), 'on')
    set(handles.uipanel1, 'Visible', 'off');
    set(handles.uipanelFunc, 'Visible', 'off');
    set(handles.uipanelRai, 'Visible', 'off');
    set(handles.uipanelReg, 'Visible', 'off');
    set(handles.uipanelInter, 'Visible', 'off');
    set(handles.uipanelFou, 'Visible', 'off');
    set(handles.uipanelED,'Visible','off');
    set(handles.uipanelInterSeg,'Visible','on');
else
    set(handles.uipanel1, 'Visible', 'on');
    set(handles.uipanelFunc, 'Visible', 'off');
    set(handles.uipanelRai, 'Visible', 'off');
    set(handles.uipanelReg, 'Visible', 'off');
    set(handles.uipanelInter, 'Visible', 'off');
    set(handles.uipanelFou, 'Visible', 'off');
    set(handles.uipanelED,'Visible','off');
    set(handles.uipanelInterSeg,'Visible','off');
end
% hObject    handle to pushbuttonInterSeg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in atras.
function pushbutton53_Callback(hObject, eventdata, handles)
% hObject    handle to atras (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttonFou2D.
function pushbuttonFou2D_Callback(hObject, eventdata, handles)
examinar1='cuchau.jpg'
imageA=imread(examinar1);

if (length(size(imageA))==3)
    imageA=rgb2gray(imageA);
end

imageA=im2double(imageA);
[ax ay az]=size(imageA);

axes(handles.axes18)
imshow(imageA);
title('IMAGEN ORIGINAL');
fftA = fft2(imageA);

imageA_Mag=abs(fftshift(fftA));
imageA_Fase=angle(fftshift(fftA));

axes(handles.axes35)
imagesc(20*log(1+imageA_Mag)); colormap(gray);
title('Magnitud FFT2')
axes(handles.axes31)
imagesc(fftshift(imageA_Fase)), colormap gray
title('Fase FFT2')

% figure, surfl(imageA_Mag);shading interp; colormap(bone);
% title('Surface of the object''s 1D-FFT magnitude spectrum')
% figure, surfl(imageA_Fase);shading interp; colormap(bone);
% title('Surface of the object''s 1D-FFT phase spectrum')

%Creación del filtro supresor-bandas
mask=zeros(size(imageA));
%figure, imshow(mask);
cen_x=round(ax/2);
cen_y=round(ay/2);

lim_sup=round(cen_x*0.6);
mask(cen_x-lim_sup:cen_x+lim_sup,cen_y-lim_sup:cen_y+lim_sup)=1;
%figure, imshow(mask);
lim_inf=round(cen_x*0.5);
mask(cen_x-lim_inf:cen_x+lim_inf,cen_y-lim_inf:cen_y+lim_inf)=0;
%figure, imshow(mask);

mask=1-mask;
%tam=20;
%mask(cen_x-tam:cen_x+tam,cen_y-tam:cen_y+tam)=1;

%mask=1-mask;
% figure, imshow(mask);colormap(gray);

New_imageA_Mag=imageA_Mag.*mask;
New_imageA_Fase=imageA_Fase.*mask;

axes(handles.axes36)
imagesc(20*log(1+New_imageA_Mag)); colormap(gray);
title('Magnitud filtrada FFT2')
axes(handles.axes32)
imagesc(New_imageA_Fase), colormap gray
title('Fase filtrada FFT2')


New_imageA_Mag=fftshift(New_imageA_Mag);
New_imageA_Fase=fftshift(New_imageA_Fase);

axes(handles.axes34)
imagesc(20*log(1+New_imageA_Mag)); colormap(gray);
title('Magnitud filtrada FFT2')
axes(handles.axes33)
imagesc(New_imageA_Fase), colormap gray
title('Fase filtrada FFT2')

% figure, surfl(New_imageA_Fase);shading interp; colormap(bone);
% title('phase spectrum filtered')


fftC = New_imageA_Mag.*exp(i*New_imageA_Fase);

imageC = ifft2(fftC);

cmin = min(min(abs(imageC)));
cmax = max(max(abs(imageC)));

axes(handles.axes30)
imshow(abs(imageC), [cmin cmax]), colormap gray
title('Imagen filtrada')
% hObject    handle to pushbuttonFou2D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttonCurvasParametricas.
function pushbuttonCurvasParametricas_Callback(hObject, eventdata, handles)
cla(handles.axes8);
switch get(get(handles.uibuttongroupConjInter,'SelectedObject'),'Tag')
    case 'radiobuttonConjArb'
        x=[0.9 1.3 1.9 2.1 2.6 3.0 3.9 4.4 4.7 5.0 6.0 7.0 8.0 9.2 10.5 11.3 11.6 12.0 12.6 13.0 13.3];
        y=[1.3 1.5 1.85 2.1 2.6 2.7 2.4 2.15 2.05 2.1 2.25 2.3 2.25 1.95 1.4 0.9 0.7 0.6 0.5 0.4 0.25];
    case 'radiobuttonMano'
        x=[12.6 7 5.4 4 1 1 3 4.8 7.3 7.5 7 6 7.2 8.7 9.5 10 10.5 11 10 11.5 14 14 14.5 17 18 19 20 21 21 20 19 19 24 27 31 31 26 24 22 18];
        y=[3.7 7 11.6 17 26 29 29 22 18.6 24 27 32 35.8 34 30 25 21.8 30 37 38.4 30 25 22.8 28 31 36 37.3 34.5 32 26 22 18 17 21 23 21 14 9 6 3];
end
axes(handles.axes8)
curvaParam(x,y);
% hObject    handle to pushbuttonCurvasParametricas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttonInterpolacionSegmentaria.
function pushbuttonInterpolacionSegmentaria_Callback(hObject, eventdata, handles)
cla(handles.axes8);
switch get(get(handles.uibuttongroupConjInter,'SelectedObject'),'Tag')
    case 'radiobuttonConjArb'
        x=[0.9 1.3 1.9 2.1 2.6 3.0 3.9 4.4 4.7 5.0 6.0 7.0 8.0 9.2 10.5 11.3 11.6 12.0 12.6 13.0 13.3];
        y=[1.3 1.5 1.85 2.1 2.6 2.7 2.4 2.15 2.05 2.1 2.25 2.3 2.25 1.95 1.4 0.9 0.7 0.6 0.5 0.4 0.25];
    case 'radiobuttonMano'
        x=[12.6 7 5.4 4 1 1 3 4.8 7.3 7.5 7 6 7.2 8.7 9.5 10 10.5 11 10 11.5 14 14 14.5 17 18 19 20 21 21 20 19 19 24 27 31 31 26 24 22 18];
        y=[3.7 7 11.6 17 26 29 29 22 18.6 24 27 32 35.8 34 30 25 21.8 30 37 38.4 30 25 22.8 28 31 36 37.3 34.5 32 26 22 18 17 21 23 21 14 9 6 3];
end
axes(handles.axes8)
interpolacionSegmen(x,y);
% hObject    handle to pushbuttonInterpolacionSegmentaria (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
