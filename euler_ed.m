function [eTruncamiento,error_euler,y,fxReal]=euler_ed(paso)
x_aux=0:0.01:4;
y_aux=(-0.5.*x_aux.^4 + 4.*x_aux.^3 - 10.*x_aux.^2 + 8.5.*x_aux + 1);
dy_dx = @(x) (-2*x^3 + 12*x^2 - 20*x + 8.5);
yReal = @(x) (-0.5*x^4 + 4*x^3 - 10*x^2 + 8.5*x + 1);
x = 0:paso:4;
y(1) = 1;


%%%% EULER
for i = 1:length(x)-1
fx = dy_dx(x(i));
y(i+1) = y(i) + fx*paso;
end


for i = 1:length(x)
fxReal(i) = yReal(x(i));
error_euler(i) = ((fxReal(i) - y(i))/(fxReal(i)))*100;
end


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