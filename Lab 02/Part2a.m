n = [1,2,3,4,5];
un = [1,2,3,4,5];
hn = un;
xn = 0.5 .^n .* un;

% xn = [1,1,1,1,1,0,0,0,0,0,0,0,0,0,0];
% hn = [2,4,8,16,32,64,0,0,0,0,0,0,0,0,0];

y = convolution(xn,hn)

y_1 = conv(xn,hn)

subplot(3,1,1);
stem(xn);
grid
xlabel( 'n' ) ; 
ylabel( 'x(n)' ) ; 

subplot(3,1,2);
stem(hn);
grid
xlabel( 'n' ) ; 
ylabel( 'h(n)' ) ; 

subplot(3,1,3);
stem(y);
grid
xlabel( 'n' ) ; 
ylabel( 'y(n)' ) ;

function y = convolution(x,h)
    m=length(x);
    n=length(h);
    X=[x,zeros(1,n)]; 
    H=[h,zeros(1,m)]; 
    for i=1:n+m-1
        y(i)=0;
        for j=1:m
            if(i-j+1>0)
                y(i)=y(i)+X(j)*H(i-j+1);
            else
            end
        end
    end
end
