clear all;
close all;
b = [2 5 12]; % Numerator coefficients 
a = [1 4 14 20]; % Demoninator coefficients

omega = linspace(-20,20,200);

H = freqs(b,a,omega);

bode(H,omega);
