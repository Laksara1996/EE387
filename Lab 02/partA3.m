syms n;

n = 0:1:20;

x1 = cos(0*n);
x2 = cos(pi*n/8);
x3 = cos(pi*n/4);
x4 = cos(pi*n/2);
x5 = cos(pi*n);
x6 = cos(3*pi*n/2);
x7 = cos(7*pi*n/4);
x8 = cos(15*pi*n/8);
x9 = cos(2*pi*n);

subplot(3,3,1);
plot(n, x1);
title('x[n] = cos(0.n)');
xlabel('0 <= n <= 20');
ylabel('x1');

subplot(3,3,2);
plot(n, x2);
title('x[n] = cos(pi*n/8)');
xlabel('0 <= n <= 20');
ylabel('x2');

subplot(3,3,3);
plot(n, x3);
title('x[n] = cos(pi*n/4)');
xlabel('0 <= n <= 20');
ylabel('x3');

subplot(3,3,4);
plot(n, x4);
title('x[n] = cos(pi*n/2)');
xlabel('0 <= n <= 100');
ylabel('x4');

subplot(3,3,5);
plot(n, x5);
title('x[n] = cos(pi*n)');
xlabel('0 <= n <= 20');
ylabel('x5');

subplot(3,3,6);
plot(n, x6);
title('x[n] = cos(3*pi*n/2)');
xlabel('0 <= n < =100');
ylabel('x6');

subplot(3,3,7);
plot(n, x7);
title('x[n] = cos(7*pi*n/4)');
xlabel('0 <= n <= 20');
ylabel('x7');

subplot(3,3,8);
plot(n, x8);
title('x[n] = cos(15*pi*n/8)');
xlabel('0 <= n <= 100');
ylabel('x8');

subplot(3,3,9);
plot(n, x9);
title('x[n] = cos(2*pi*n)');
xlabel('0 <= n <= 21');
ylabel('x9');