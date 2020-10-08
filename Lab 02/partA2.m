
syms n t1 t2;

t1 = 0:1:50;   
n = 0:5:50;


% xn = cos((2*pi*n)/12);
% xt = cos((2*pi*t1)/12);

xn = cos((8*pi*n)/31);
xt = cos((8*pi*t1)/31);

hold on;
plot(t1, xt, 'r');
plot (n, xn, 'b');
hold off
grid on;

[~, locs] = findpeaks(xt);
mean(diff(locs)*0.1)

[~, locs] = findpeaks(xn);
mean(diff(locs)*0.1)