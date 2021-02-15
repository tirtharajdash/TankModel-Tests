function cosx = mycos1(x)
%Evaluate and sum the first n terms of the cosx Taylor Series.
n = 4;
if n~=round(n)
    disp('Error: n must be an integer value.')
    cosx = 0;
    return
end
if n<0
    disp('Error: n must be a non-negative value.')
    cosx = 0;
    return
end

cosx = 1 - (x^2)/factorial(2) + (x^4)/factorial(4)...
    - (x^6)/factorial(6);

end