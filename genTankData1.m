function D = genTankData1(minT, maxT)

%other params
alpha = 5;

J = 1;
for t = minT : maxT
    D(J,1) = t;                         %time
    D(J,2) = 9; %randi([1 10],1,1);         %inflow rate
    D(J,3) = (1/alpha)*(1 + cos(t));    %inflow conc.
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