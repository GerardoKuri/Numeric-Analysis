function [xr,e_1,i]=reglaFalsa(f,err,n,xl,xu)


aa=0;
flag=0;

for i=1:n
    
x=xl; 
vfxl=f(x);

x=xu; 
vfxu=f(x);

xr=xu-((vfxu*(xu-xl))/(vfxu-vfxl));

P1=[xl vfxl];P2=[xu vfxu];
plot(xl,vfxl,'+r','LineWidth',2)
plot(xu,vfxu,'+r','LineWidth',2)
plot([P1(1) P2(1)],[P1(2) P2(2)],':')

plot(xr,0,'ok')

x=xr;
vfxr=f(x);

valor=abs(vfxr);
error_a=abs((valor-aa)/valor);
error_t=abs((1-valor)-1)*100;
aa=valor;

e_1(i)=error_t;

if valor<err
    break;
end

    if vfxr*vfxl<0
        plot(xu,0,'ow')
        xu=xr;
        plot(xu,0,'or', 'LineWidth',1.1)
    else
        plot(xl,0,'ok')
        xl=xr;
        plot(xl,0,'ob','LineWidth',1.1)
    end
end
toc
end