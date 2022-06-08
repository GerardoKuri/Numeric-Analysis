function [eTruncamiento,error_puntoMedio,y,fxReal]=punto_Medio(paso)
x_aux=0:0.01:4;
y_aux=(-0.5.*x_aux.^4 + 4.*x_aux.^3 - 10.*x_aux.^2 + 8.5.*x_aux + 1);

dy_dx = @(x) (-2*x^3 + 12*x^2 - 20*x + 8.5);
yReal = @(x) (-0.5*x^4 + 4*x^3 - 10*x^2 + 8.5*x + 1);
x = 0:paso:4;
y(1) = 1;


%%%% PUNTO MEDIO
y0_m(1) = 1;
y2(1) = 1;
for i = 1:length(x)-1
    fx3 = dy_dx(x(i));
    y0_m(i+1) = y2(i) + (fx3)*paso/2; %Predictor
    fx4= dy_dx(x(i+1));
    y2(i+1) = y2(i) + (y0_m(i))*paso; %Corrector
end


for i = 1:length(x)
fxReal(i) = yReal(x(i));
error_puntoMedio(i)=((fxReal(i) - y2(i))/(fxReal(i)))*100;
end


% 
% subplot(2,1,1)
% plot(x, y2,'--','Color', 'r');%Punto medio
% hold on
% plot(x, fxReal,'-','Color','k');%Real
% plot(x_aux,y_aux, 'k')
% hold on
% 
% 
% xlabel('Valor de X'); ylabel('Valor de Y');
% title('Valor verdadero vs valor estimado');
% legend('Punto Medio','Real','Location','southeast');
% 
% 
% subplot(2,1,2)
% plot(error_puntoMedio,'--*','Color','r');
% xlabel('Valor en X');
% ylabel('Error(%)'); 
% title('Error relativo');




%Error de truncamiento
d1y = @(x)(-6*x^2+24*x-20);
d2y = @(x)(-12*x +24);
d3y = @(x)(-12);

for i = 1:length(x)
eTruncamiento(i) = (d1y(x(i))/factorial(2))*paso^2;
eTruncamiento(i) = eTruncamiento(i) + (d2y(x(i))/factorial(3))*paso^3;
eTruncamiento(i) = eTruncamiento(i) + (d3y(x(i))/factorial(4))*paso^4;
end
end
