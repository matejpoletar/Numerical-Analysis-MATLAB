%Gauss-Seidel
function [U] = GS (n,U)
for i=1:n
    for j=1:n
    f(i,j)=2*(i/26)-2*(i/26)^2+2*(j/26)-2*(j/26)^2;
    end
end
for k=1:100
for i=1:n
    for j=1:n
    U(i+1,j+1) = f(i,j)/(n+1)^2 + 1/4*(U(i,j+1)+U(i+2,j+1)+U(i+1,j)+U(i+1,j+2));
    end
end
end
end