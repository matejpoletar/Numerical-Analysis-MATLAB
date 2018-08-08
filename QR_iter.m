function [Q,P,R] = QR_iter (A)
B=A;
r=zeros(100,1);
for i=1:100
  [Q,R]=qr(B);
  B=R*Q;
  P=Q'*B*Q;
  r(i)=norm(A*Q-Q*P);
end
 plot (1:100,r);
end