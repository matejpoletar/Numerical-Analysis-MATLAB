%Jacobijeva metoda
n=size(A,1);
x0=rand(n,1); 
b=A*ones(n,1);
x=zeros(n,1);
r=zeros(n,1);
for k=1:20
    for i=1:n
       x(i)=(b(i)-A(i,:)*x0+A(i,i)*x0(i))/A(i,i); 
    end
x0=x;
r(k)=norm(b-A*x)/(norm (b));
disp ([num2str(k) '.  r=' num2str(r(k))]);
disp(x);
end
plot ([1:20],r);