
syms B;
% B = -5;
% B = -0.5;
% B = 0.5;
B = 5;
n = 0:1:10;

x = 10*B.^n;
stem(n, x);
grid;