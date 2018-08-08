%egzaktno rješenje
[X,Y] = meshgrid(0:0.04:1, 0:0.04:1);
Z = X .* Y.*(X-1).*(Y-1);
figure(1), surf(X,Y,Z)
xlabel('x')
ylabel('y')
zlabel('u(x,y)=x(x-1)y(y-1)')

%broj tocaka za diskretizaciju
n=25;

%generiranje pocetne iteracije
U=ones(27);
U(1,:)=0;
U(:,1)=0;
U(27,:)=0;
U(:,27)=0;

%Ra?cunanje rješenja 
[U] = GS (n,U);

%Prikaz izracunatog rješenja
figure(2), surf(X,Y,U(1:26,1:26))
xlabel('x')
ylabel('y')
zlabel('u(x,y)')