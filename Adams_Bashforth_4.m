function [ y ] = Adams_Bashforth_4( y0,f,h,n )
%ADAMS_BASHFORTH_4 Summary of this function goes here
%   Detailed explanation goes here
x(1)=0;
y(1)=y0;
for i=1:4
    x=i*h;
    F(i)=f(x,y(i));
    psi2=f(x+0.5*h,y(i)+0.5*h*F(i));
    psi3=f(x+0.5*h,y(i)+0.5*h*psi2);
    psi4=f(x+h,y(i)+h*psi3);
    y(i+1)=y(i)+h*(F(i)/6+psi2/3+psi3/3+psi4/6);
end
for i=4:n
    x=i*h;
    y(i+1)=y(i)+h/24*(55*F(i)-59*F(i-1)+37*F(i-2)-9*F(i-3));
    F(i+1)=f(x+h,y(i+1));
end
figure
plot(h*[1:n+1],y,'rx:')
grid on
hold on
fplot('exp(-x)*sin(2*x)',[0 1]);
hold off
end

