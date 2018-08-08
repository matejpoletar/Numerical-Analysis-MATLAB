% H=U'*A*U
function [H,U]=HessenbergForm(A,n)
U=diag(ones(n,1));
for k=1:n-2
   Q=zeros(n);
    for i=1:k+1 
       Q(i,i)=1;
    end
x=A(k+1:n,k);
v=x;
v(1)=sign(x(1))*norm(x)+x(1);
v=v/norm(v);
Q(k+1:n,k+1:n)=((diag(ones(n-k,1))-2*(v*v')));
U=U*Q;
%A(k+1:n,k:n)=A(k+1:n,k:n)-2*v*(v'*A(k+1:n,k:n)); 
%A(1:n,k+1:n)=A(1:n,k+1:n)-2*A(1:n,k+1:n)*v*v'; ILI
A=Q'*A*Q;
end
H=A;
end