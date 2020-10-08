x = [ 1,2,3,4,5 ];
h = [1]; 

y = conv(x,h);

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

[q,r] = deconv(y,h)
