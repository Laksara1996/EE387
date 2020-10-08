
P = 100000;
B = interest(P)
x = conv(B,P)
stem(x)

M = 100000;
S = saving_balance(M)
x = conv(S,M)
stem(x)

function   B = interest(P)
    
    B = P + P /100;

end

function   S = saving_balance(M)
    
    S = M / 2;

end

