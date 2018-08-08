x=linspace(0,1,n+1);
y=linspace(1,0,n+1)';
for i=1:n+1
   X(:,i)=x(i)^2+y.^2;
end
f=4*pi*cos(pi*X);
u=zeros(n+1);

%rubni uvjeti
u(n+1,:)=sin(pi*x.^2);
u(1,:)=sin(pi*(x+1).^2);
u(:,1)=sin(pi*y.^2);
u(:,n+1)=sin(pi*(y+1).^2);

%metoda
for k=1:100
    for i=2:n
    for j=2:n
     u(i,j)=0.25/(1+pi*X(i,j))*(u(i-1,j)+u(i+1,j)+u(i,j-1)+u(i,j+1))+f(i,j);
    end
    end
end
