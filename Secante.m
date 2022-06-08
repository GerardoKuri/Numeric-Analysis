function [p,error,i]=Secante(f,tol,n,p0,p1)
% Secant Algorithm
 % Find the root of y = cos(x) from 0 to pi.

% f = @(x) (cos(x));
%  p0 = 0.5
%  p1 = 1.5
%  n = 100
%tol = 0.0001
%  
 i = 1;
 f0 = f(p0);
 f1 = f(p1);
 while i <= n
     p = p1-f1*(p1-p0)/(f1-f0);
    fp = f(p);
    error(i)=abs(f(p));
    if abs(p-p1) < tol
       break;
    else
       i = i+1;
       p0 = p1;
       f0 = f1;
       p1 = p;
       f1 = fp;
    end
 end
end