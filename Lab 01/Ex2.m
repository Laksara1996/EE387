y = [1,2,2.5,3,3,3,2,1,0];

h = [1,0.5,0.25,0.125,0,0,0,0,0];

[x,r] = deconv(y,h)

subplot(3,1,1);
stem(x);
grid
xlabel( 'n' ) ; 
ylabel( 'x(n)' ) ; 
 
subplot(3,1,2);
stem(h);
grid
xlabel( 'n' ) ; 
ylabel( 'h(n)' ) ; 
 
subplot(3,1,3);
stem(y);
grid
xlabel( 'n' ) ; 
ylabel( 'y(n)' ) ;

y1 = conv(x,h) + r
