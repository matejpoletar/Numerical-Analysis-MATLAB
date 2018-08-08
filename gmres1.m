function [Q]= gmres1(A,b,m,x0)
r0=b-A*x0;
Q(:,1)=r0/norm(r0);
for i=1:9
    v=A*Q(:,i);
    for j=1:i
    H(j,i)=transpose(Q(:,j))*v;
    v=v-Q(:,j)*H(j,i);
    end
    Q=[Q,v];
end
end
