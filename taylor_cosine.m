function stp = taylor_cosine(c, x, n)
% c = center of the function
% x = a vector with values around c
% n = number of terms in the series 

% Start the series with 0
smp = 0;

% Consider all the possible derivatives
deriv = [0 -1 0 1]'; 

% Iterate n times (from 0 to n-1)
for i = 0 : n-1

    % Implement the Taylor expansion
    t(i+1, :) = deriv(1) * (x-c).^(i) / factorial(i);

    % Find derivative for the next term
    deriv = circshift(deriv, -1);

end

% Add-up the calculated terms
stp = sum(t);

 