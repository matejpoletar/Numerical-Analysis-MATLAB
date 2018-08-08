function [ y ] = zad7(t0,y0,h,n )
%RUNGE_KUTTA Summary of this function goes here
%   Detailed explanation goes here
function [ dx ] = f(t,x)
dx=zeros(5,1);
dx(1)=x(2,1);
dx(2)=x(1,1)-x(3,1)-9*x(2,1)^2+x(4,1)^3+6*x(5,1)+2*t;
dx(3)=x(4,1);
dx(4)=x(5,1);
dx(5)=x(5,1)-x(2,1)+exp(x(1,1))-t;
end
y(:,1)=y0;
for i=1:n
    t=t0+i*h;
    psi1=f(t,y(:,i));
    psi2=f(t+0.5*h,y(:,i)+0.5*h*psi1);
    psi3=f(t+0.5*h,y(:,i)+0.5*h*psi2);
    psi4=f(t+h,y(:,i)+h*psi3);
    y(:,i+1)=y(:,i)+h*(psi1/6+psi2/3+psi3/3+psi4/6);
end
%plot(h*[1:n+1],y,'rx:');
end