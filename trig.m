function y = trig(x, a, b)
	m = length(a) - 1;
	y = a(1) / 2 * ones(size(x));
	for k = 1:m
		y = y + a(k + 1) * cos(k * x) + b(k + 1) * sin(k * x);
	end
end
