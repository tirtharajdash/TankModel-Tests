%testing the inverse problem Q = f_inv(X); x= ?

clc
clear

R = 10;
C = 5;

D = rand(R,C)*100;

net = fitnet([5],'trainlm');
net.trainParam.showCommandLine =  true;
net.trainParam.showWindow = false;
net = train(net,D(:,1:C-1)',D(:,C)');

Q = ceil(D(randi([1 R],1),5)+randi([1 10],1));

[~,i] = min(abs(D(:,5)-Q));
acc = 0.95;
d11 = D(1,1);

iter = 0;
while iter <= 10
    
    if (D(i,5) <= Q && D(i,5)/Q >= acc && D(i,1) == d11)
        break;
    else
        if (Q <= D(i,5) && Q/D(i,5) >= acc && D(i,1) == d11)
            break;
        end
    end
    
    fprintf('Closeness(Q*: %f, Q: %f) =  %f\n',Q, D(i,5), abs(D(i,5)-Q));
    
    eta = 1;
    nbdsize = R/2;
    
    %A = 0; %-eta*std(D(:,1:4))
    %B = eta*std(D(:,1:4));
    
    for j = 1:nbdsize
        NbdX(j,2:4) = D(i,2:4) - eta*rand*(Q-D(i,5));%(A + (B - A).*rand(1,4));
        NbdX(j,1) = d11;
    end
    
    NbdX(:,5) = net(NbdX(:,1:4)');
    
    clear D;
    D = NbdX;
    
    [~,i] = min(abs(D(:,5)-Q));
    
    iter = iter + 1;
end

fprintf('Inputs required to produce Q* = %5.2f are:\n',Q);
D(i,1:5)
if (D(i,5) <= Q && D(i,5)/Q >= acc)
    fprintf('Accuracy (Q / Q*) = %f\n',D(i,5)/Q);
else
    if (Q <= D(i,5) && Q/D(i,5) >= acc)
        fprintf('Accuracy (Q / Q*) = %f\n',Q/D(i,5));
    end
end

