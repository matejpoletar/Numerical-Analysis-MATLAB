function [a,U]=jacobi2 (n,a) 
U=diag(ones(n,1));
for ciklus=1:100
for i=1:n-1
    for j=i+1:n 
    if abs(a(i,j))>1e-16
    zeta=(a(j,j)-a(i,i))/(2*a(i,j));
    tau=sign(zeta)/(abs(zeta)+sqrt(1+zeta^2));
    c=1/sqrt(1+tau^2); s=tau*c;
    b=0;
    T(1,1)=c; T(2,2)=c; T(1,2)=s; T(2,1)=-s;
    %a([i,j],:)=T'*a([i,j],:); %retci
    %a(:,[i,j])=a(:,[i,j])*T; %stupci
    a([i,j],j+1:n)=T'*a([i,j],j+1:n);
    a(1:i-1,[i,j])=a(1:i-1,[i,j])*T;
    temp=a(i,i+1:j-1);
    a(i,i+1:j-1)=c*a(i,i+1:j-1)+s*(a(i+1:j-1,j))';
    a(i+1:j-1,j)=s*temp'+c*a(i+1:j-1,j);
    a(i,i)=a(i,i)-a(i,j)*tau;
    a(j,j)=a(j,j)+a(i,j)*tau;
    a(i,j)=0;
    U(:,[i,j])=U(:,[i,j])*T;
    else
        b=b+1;
        if b==n*(n-1)/2 
            disp (ciklus); 
            break
        end
    end
    end
end
end
end