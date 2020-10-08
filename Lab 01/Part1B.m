clc; 

Ts=0.01;
t= -5:Ts:5;

x = 3 .*exp(-t) .* cos(4*pi*t);
% Plot the signal versus time:

[up,lo] = envelope(x);
figure;
hold on
plot(t,x,t,up,t,lo)
legend('q','up','lo')


xlabel('time (in seconds)');
title('Signal versus Time');

hold off

