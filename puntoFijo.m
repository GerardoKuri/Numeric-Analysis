function [xr,ye,cont]=puntoFijo(f,e,n)
cont=1;
%fprintf('i \t \t x \t \t \t error \n');
%fprintf('0 \t %f  \n',inicial);
inicial=0;
error=e;
%f(x)=f;
%f(x)=(x.^10)-1;
max_iteraciones=n;
flag=0;
ye=[];
while (cont<=max_iteraciones & flag==0)
    xr=inicial;
    inicial=f(xr);
    ye(cont)=abs(inicial-xr);
    %fprintf('%d \t %1.7f \t \t %f \n', cont, inicial, ye(cont));
    if(ye(cont)<=error)
        flag=1;
        break;
        %i=max_iteraciones+1;
    end
    cont=cont+1;
end
if cont>n
    cont=n;
end