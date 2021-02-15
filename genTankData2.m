function D = genTankData2(minT, maxT)

%other params
alpha = 5;

%generate cos model
COSt = genCOStData(minT,maxT);
net = fitnet([10 10 10],'trainlm');
net.trainParam.showCommandLine =  true;
net.trainParam.showWindow = false;
net = train(net,COSt(:,1:6)',COSt(:,7)');
%cosFitVal = net(COSt_tst(:,1:6)');

J = 1;
for t = minT : maxT
    D(J,1) = t;                         %time
    D(J,2) = 9; %randi([1 10],1,1);         %inflow rate
    D(J,3) = net([-t^2 t^4 -t^6 t^8 -t^10 0]'); %gen cos val
    D(J,4) = 6;%randi([1 10],1,1);         %outflow rate
    D(J,5) = 600;%randi([100 900],1,1);      %initial vol
    D(J,6) = 5;%randi([1 20],1,1);         %initial conc.
    if J == 1
        D(J,7) = 0;
    else
        D(J,7) = D(J-1,8);
    end
    
    D(J,8) = (9/5) * ( (1/3) * (200 + t) + sin(t) + ...
        2*cos(t)/(200 + t) - 2*sin(t)/(200 + t)^2 ) ...
        - 4600720/(200 + t)^2;
    J = J + 1;
end