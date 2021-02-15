function cos_t = TaylorCOS(x)
% Let's see more decimals
format long 

% We go from n = 0 to n = 2
n = 0 : 2; 

% Center and point to evaluate
c = pi/2;

% These are the derivatives for each term
d = [0 -1 0]; 

% We form the sequence, following the Taylor formula
seq = d .* (x - c).^n ./(factorial(n));

% We add-up to get the Taylor approximation
cos_t = sum(seq);

% Let's compare with the official number
real_value = cos(x);