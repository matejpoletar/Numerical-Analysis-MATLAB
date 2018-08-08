function [ y ] = Runge_Kutta( f,y0,h,n )
%RUNGE_KUTTA Summary of this function goes here
%   Detailed explanation goes here
y(1)=y0;
for i=1:n
    t=i*h;
    psi1=f(t,y(i));
    psi2=f(t+0.5*h,y(i)+0.5*h*psi1);
    psi3=f(t+0.5*h,y(i)+0.5*h*psi2);
    psi4=f(t+h,y(i)+h*psi3);
    y(i+1)=y(i)+h*(psi1/6+psi2/3+psi3/3+psi4/6);
end
plot(h*[1:n+1],y,'rx:');
end