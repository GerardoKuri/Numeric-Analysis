function [xf,ye,j]=NewtonRaphson(f,err,n,xl)
%Se de alta la variable simb�lica X
syms x
%Se introduce la funci�n,el punto de inicio,as� como
%porcentaje de error
% f=@(x) (x.^10)-1; % Ejemplo: (x^3)-x-1
% xl=0.5; % 1
% err=0.001; % Error pocentual 0.1 es 0.1%
% n=100;
% xu=2;
% xu=xu;
% xe=xl:0.01:xu;
% plot(xe, f(xe));
% title('M�todo Newton-Rapson');
% xlabel('X')
% ylabel('f(X)')
% hold on;
% 


%Graficamos la funci�n
% ezplot(f)
% grid on

%Calculamos la derivada de la funci�n
d=diff(f(x));
d=inline(d);

ea=100;
j=0;
% iteracionesMaximas = 100;

%Se aplica la iteraci�n con Newton-Raphson
tic
while ea>err && j<n
    %Aproximamos la raiz con la f�rmula correpondiente
    xi=xl-(f(xl)/d(xl));
    %Calculamos el porcentaje de error
    %ea=abs(((xi-xl)/xi)*100);
    ea=abs(f(xi));
        
    ye(j+1)=ea;
    xl=xi;
    j=j+1;
end

xf=xl

% plot(xf,f(xf),'o');

end