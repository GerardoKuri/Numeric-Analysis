function [xr,ye,cont]=Bisec(f,e,n,xl,xu)
flag=0;
E=inf;
cont=0;
while (flag==0 && E>e && cont<n) 
    if(f(xl)*f(xu))<0
        xr=(xl+xu)/2;
        E=abs(f(xr));
        ye(cont+1)=E;
        cont=cont+1;
        if (f(xl)*f(xr))<0
            xr=(xl+xu)/2;
            xu=xr;
        elseif (f(xl)*f(xr))>0
            xr=(xl+xu)/2;
            xl=xr;
        end
    else
        display('No existe una raiz dentro del rango o existe más de una');
        xr=inf;
        flag=1;
    end
end

end
