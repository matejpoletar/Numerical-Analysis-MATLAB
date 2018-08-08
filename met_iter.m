%Metoda inverznih iteracija
y=x0/norm(x0);
for k=1:100
    x=B\y;
    y=x/norm(x);
    ro=y'*A*y /(y'*y);
    if(norm(A*y-ro*y)<tol) 
        l=y'*A*y /(y'*y);
    disp(y);
    disp(l);
    return
    end
end
