function g = vectize(f)
%<last updated 11/16/88>
%VECTIZE  f is a vector containing a formula represented as a
%         string. If any of the operators *, ^, /, \ do not
%         appear in element-by-element form .*, .^, ./, .\ the
%         "dot" is added. This enables the formula to be
%         evaluated on vectors. Exercise care in using this
%         routine with a matrix of strings the resulting rows
%         need not be of equal length.
%
%     Use in the form  -->  g = vectize(f)  <--
%
%         David R. Hill, MATH Dept., Temple University
%         Philadelphia, Pa. 19122
n=length(f);g(1)=f(1);
for k=2:n
  if f(k)=='*' | f(k)=='/' | f(k)=='^' | f(k)=='\'
     if f(k-1) ~= '.'
        g=[g ' .' f(k) ' '];
     else
        j=length(g);g=[g(1:(j-1)) ' ' g(j) f(k) ' '];
     end
  else
     g=[g f(k)];
  end
end


