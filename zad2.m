function [y]=zad2 (A,x)
n=max(size(A));
y=x/norm(x);
ro=y'*A*y /(y'*y);
for i=1:15
   x=(A-ro*diag(ones(n,1)))\y;
   y=x/norm(x);
   ro=y'*A*y /(y'*y);
end
end