function TD = genTankData(minT, maxT)

J = 1;
for t = minT : maxT
    TD(J, 1) = t;
    
    %Q_t = (9/5) * ( (1/3) * (200 + t) + sin(t) + ...
    %    2*cos(t)/(200 + t) - 2*sin(t)/(200 + t)^2 ) ...
    %    - 4600720/(200 + t)^2;
    %Q_t = (9/5) * ((600 + 3*t)^2 * (t + sin(t)) - ...
    %    (1/9) * (t + sin(t))*(600 + 3*t)^3) + ...
    %    (600 + 3*t)^2 + 359995;
    Q_t = (9/5)*((1+cos(t))*(600+3*t)+3239838*sin(t)...
        - 215967600*cos(t) - 16200*t^2*cos(t)...
        - 27*t^3*cos(t) + 81*t^2*sin(t) -...
        3239838*t*cos(t) + 32400*t*sin(t)) + 388739520;
    
    TD(J, 2) = Q_t;
    
    J = J + 1;
end
