function [X1,error_x,Cont]=raicesMultiples(f,tol,iter,xo)


syms x
%%%%%%%%%%%%%DATOS 
% xo=0.5;              %Valor inicial
% iter=100;           
% tol=0.0007;
% f=@(x) cos(x); %Funcion  (x^4)-(6*(x^3))+(12*(x^2))-(10*x)+3;(3*(x^2))-(10*x)+7%(x^10)-1
% 


y1=f(xo);

Dif=diff(f(x));
De=inline(Dif);
D=De(xo);

Di_2=diff(f(x),2);
De_2=inline(Di_2);
D2=De_2(xo);

Error=tol+1;
Cont=0;
Denominador=D^2-(y1*D2);
%%%%%%%% Metodo Raices Multiples
while y1~=0 & Error>tol & Cont<iter & Denominador~=0
    X1=xo-((y1*D)/(D^2-(y1*D2)));
    y1=f(X1);
    D=De(X1);
    D2=De_2(X1);
    Error=abs((X1-xo)/X1);
    error_x(Cont+1)=Error;
    Cont=Cont+1;
    
    xo=X1;
end

%display(X1);
display(Error);
display(Cont);

