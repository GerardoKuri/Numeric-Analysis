function [a3, a2, a1, a0] = RegresionCubica(datos)
xi = datos(:,1);
yi = datos(:,2);
n = length(xi);
sum_xi = sum(xi); sum_xi2 = sum(xi.^2);
sum_xi3 = sum(xi.^3); sum_yi = sum(yi);
sum_xi4 = sum(xi.^4); sum_xiyi = sum(xi.*yi);
sum_xi5 = sum(xi.^5); sum_xi2yi = sum((xi.^2).*yi);
sum_xi6 = sum(xi.^6); sum_xi3yi = sum((xi.^3).*yi);

A = [n sum_xi sum_xi2 sum_xi3
    sum_xi sum_xi2 sum_xi3 sum_xi4
    sum_xi2 sum_xi3 sum_xi4 sum_xi5
    sum_xi3 sum_xi4 sum_xi5 sum_xi6];
B = [sum_yi;sum_xiyi;sum_xi2yi;sum_xi3yi];
w = A\B;
a3 = w(4);a2 = w(3); a1 = w(2); a0 = w(1);