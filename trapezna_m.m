function [ y ] = trapezna_m( y0,f,h,n )
%TRAPEZNA_M Summary of this function goes here
%   Detailed explanation goes here
y=y0;
for i=1:n
    x=i*h;
    ynew=fsolve(@(q) q-y(i)-0.5*h*(f(x,y(i))+f(x+h,q)),y(i));
    y=[y,ynew];
end
figure
plot(h*[1:n+1],y,'rx:')
grid on
hold on
fplot('exp(-x)*sin(2*x)',[0 1]);
hold off
title('trapezna metoda')
end

