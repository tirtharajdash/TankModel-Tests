function COSt = genCOStData(minT, maxT)

% alpha
alpha = 5;

J = 1;
for t = minT:maxT
    COSt(J,1) = -t^2;
    COSt(J,2) = +t^4;
    COSt(J,3) = -t^6;
    COSt(J,4) = +t^8;
    COSt(J,5) = -t^10;
    if J == 1
        COSt(J,6) = 0;
    else
        COSt(J,6) = COSt(J-1,7);
    end
    
    COSt(J,7) = (1/5)*(1 + cos(t));
    
    J = J + 1;
end
