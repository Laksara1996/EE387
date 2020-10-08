clc;

f_s = 100;
T_s = 1/f_s; 

t = -5:T_s:5; 

b1 = 0.5;
a1 = -0.5;

x1 = rect(t); 
plot(t,x1);

axis( [-2 2 -1 2]); 

xlabel( 'time (sec)' );
ylabel( 'x_1(t)' );
title ('Plot 1: A rectangular pulse');

% %Elementary signal operations 
x2 = rect(t-1);
plot(t,x2);
axis( [-2 2 -1 2])

x3 = rect(t/2);
plot(t,x3);
axis( [-2 2 -1 2]);

x4 = rect(t)+(1/2) * rect(t-1);

x5 = rect(-t)+(1/2) * rect(-t-1);

x6 = rect(1-t)+(1/2) * rect(-t);

subplot(3,2,1)
plot(t,x1)

axis( [-2 2 -1 2]);
xlabel( 'time (sec)' )
ylabel('x_1(t) = rect(t)') 

subplot(3,2,2)
plot(t,x2)

axis( [-2 2 -1 2]);
xlabel( 'time (sec)' )
ylabel('x_2(t) = x_1(t-1)')

subplot(3,2,3)
plot(t,x3)

axis( [-2 2 -1 2]);
xlabel( 'time (sec)' )
ylabel('x_3(t) = x_1(t/2)') 

subplot(3,2,4)
plot(t,x4)

axis( [-2 2 -1 2]);
xlabel( 'time (sec)' )
ylabel('x_4(t) = x_1(t)+(1/2)x_1(t)') 

subplot(3,2,5)
plot(t,x5)

axis( [-2 2 -1 2]);
xlabel( 'time (sec)' )
ylabel('x_5(t) = x_4(-t)')

subplot(3,2,6)
plot(t,x6)

axis( [-2 2 -1 2]);
xlabel( 'time (sec)' )
ylabel('x_6(t) = x_4(1-t)') 

% %Convolution
y = conv(x1,x1);

close all;

length(y)
length(t)

t_y = -10:T_s:10;

% plot ( t, y);
% plot( t_y, y)

y1 = T_s*conv(x1,x1);

plot(t_y, y1);

axis( [-2 2 -1 2] );
xlabel( 'time (sec)');
ylabel('y_1(t)')
title('Figure : y_1(t) = x_1(t)*x_1(t)');

function x = rect(t)   
    b = 0.5;
    a = -0.5;

    N = numel(t); 
    x = zeros(N,1);
    start_time = find(t== a);
    end_time = find(t== b);
 
    pop_time = start_time:end_time;
 
    x(pop_time) = 1;

end


