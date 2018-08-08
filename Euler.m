function [y]=Euler (h,T)
y(:,1)=0;
n=T/h;
t(1)=0;
for i=1:n
t(i+1)=i*h;    
y(:,i+1)=y(:,i)+h*(-y(:,i)+2*exp(-t(i+1))*cos(2*t(i+1)));
end
plot (t,y);
end