clear;

f = @(x) sin(2*x) + cos(6 * x);
%dioba kruznice
n = 1000;
%cvorovi kao argument funkcije
xk = (0:n-1) * 2 * pi / n;
funkcija = f(xk);

%Vektor = DFT(fk);
Vektor = fft(funkcija) / n;
m = floor(n / 2);
a = zeros(m + 1, 1);
b = zeros(m + 1, 1);
%prvi koef ao po cos
a(1) = 2 * real(Vektor(1));
%prvi koef b1 po sin
b(1) = 0;
for k = 1:m
	a(k + 1) = 2 * real(Vektor(k + 1));
	b(k + 1) = -2 * imag(Vektor(k + 1));
end
if n == 2 * m
	a(m + 1) = a(m + 1) / 2;
	b(m + 1) = 0;
end

figure;
hold on;
plot(xk, funkcija, 'ro');
fplot(@(x) trig(x, a, b), [0, 2 * pi]);
