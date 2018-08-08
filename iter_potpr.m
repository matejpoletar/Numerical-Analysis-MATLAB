%Iteracije potprostora
function [Y,P] = iter_potpr (A, X)
[Y,R] = qr(X,0);
for i=1:100
   X=A*Y;
  [Y,R] = qr(X,0);
  P=Y'*A*Y;
  r(i)=norm(A*Y-Y*P);
  if (r(i)<0.00001) 
      plot (r,[1:100])
      return 
  end
end
end