%La función recibe un conjunto de datos, una matriz de dos columnas y n
%filas y encuentra la recta que mejor se ajusta a los datos.  


function [a1, a0] = RegresionLineal(data)
format long
[n, ~] = size(data);
xi = data(:,1);
min_xi = min(xi);
max_xi = max(xi);
yi = data(:,2);
sum_xi = sum(xi);
sum_yi = sum(yi);
mean_x = mean(xi);
mean_y = mean(yi);
sum_product = sum(xi.*yi);
sum_x2 = sum(xi.^2);
a1 = ((n*sum_product) - (sum_xi*sum_yi))/(((n*sum_x2)-(sum_xi)^2));
a0 = mean_y - (a1*mean_x);
end