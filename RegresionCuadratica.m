function [a2, a1, a0] = RegresionCuadratica(datos)
xi = datos(:,1);
yi = datos(:,2);
n = length(xi);
sum_xi  = sum(xi);
sum_yi = sum(yi);
sum_xi2 = sum(xi.^2);
sum_xi3 = sum(xi.^3);
sum_xi4 = sum(xi.^4);
sum_xiyi = sum(xi.*yi);
sum_xi2yi = sum((xi.^2).*yi);
A = [n,sum_xi, sum_xi2;
     sum_xi, sum_xi2, sum_xi3;
     sum_xi2, sum_xi3, sum_xi4];
 
C = [sum_yi; sum_xiyi; sum_xi2yi];
 
B = A\C;
a2 = B(3); a1 = B(2); a0 = B(1);