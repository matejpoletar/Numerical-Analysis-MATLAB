function [Hess,Q]=bulge(H,n)
Q=diag(ones(n,1));
for i=1:n-1
    G=diag(ones(n,1));
    c=abs(H(i,i))/(sqrt(H(i,i)^2+H(i+1,i)^2));
    s=sign(H(i,i))*H(i+1,i)/(sqrt(H(i,i)^2+H(i+1,i)^2));
    G(i,i)=c; G(i,i+1)=-s; G(i+1,i)=s; G(i+1,i+1)=c;
    Hess=G'*H*G;
    H=Hess;
    Q=Q*G;
end