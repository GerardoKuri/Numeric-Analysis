function interpolacionSegmen(x,y)
plot(x,y,'o');
% grid on;
% hold on

%SplineCuadratico(xt, f_x)

len=length(x);

for n=1:len-1
    m=(y(n+1)-y(n))/(x(n+1)-x(n));
    xl=x(n):0.01:x(n+1);
    fx_ = y(n) + m*(xl-x(n));
    hold on;
    plot(xl,fx_,'r');
end
end