%Jacobijeva metoda 
for ciklus=1:100
for i=1:n-1
    for j=i+1:n 
    if a(i,j)~=0
    zeta=(a(j,j)-a(i,i))/(2*a(i,j));
    tau=sign(zeta)/(abs(zeta)+sqrt(1+zeta^2));
    a(i,i)=a(i,i)-tau*a(i,j);
    a(j,j)=a(j,j)+tau*a(i,j);
    a(i,j)=0; a(j,i)=0;
    c=1/sqrt(1+tau^2); s=tau*c;
    temp=a(:,i);
    a(:,i)=c*temp+s*a(:,j);
    a(:,j)=-s*temp+c*a(:,j);
    temp=a(i,:);
    a(i,:)=c*temp+s*a(j,:);
    a(j,:)=-s*temp+c*a(j,:);
    end
    end
end
end