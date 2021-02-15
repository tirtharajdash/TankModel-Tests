function cos_t = computeCOSt(t)

%series expansion of cos t
cos_t = 1 - (1/2)*(t^2) + (1/24)*(t^4) - (1/720)*(t^6) ...
    + (1/factorial(8))*(t^8) - (1/factorial(10))*(t^10);
