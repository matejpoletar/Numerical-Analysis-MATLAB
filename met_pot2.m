y=x0/norm(x0);
for k=1:100
    x=(A-tau*diag(ones(n,1)))\y;
    y=x/norm(x);
    ro=y'*A*y /(y'*y);
    if(norm(A*y-ro*y)<tol) 
        l=y'*A*y/(y'*y);
   disp(k); 
        disp(y);
    disp(l);
    return
    end
end