clear all;
close all;
b = [2 5 12]; % Numerator coefficients
a = [1 4 14 20]; % Demoninator coefficients
zs = roots(b); % Generetes Zeros
ps = roots(a); % Generetes poles
pzmap(ps,zs); % generates pole-zero diagram
