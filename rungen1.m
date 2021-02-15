clc
% syms ro ri t v a Q0 vi
% f = (v + (ri - ro)*t)^(ro/(ri-ro))*(2 - t^2/2 + t^4 / 24 - t^6/720)
% int_f_t = int(f,t)
% f1 = int_f_t*(ri / a)
k = Q0 - fun_f1(v,ri,ro,0,a);%/fun_div(v,ri,ro,0); %value of integrating constant
Q = fun_f1(v,ri,ro,t,a)/fun_div(v,ri,ro,t)% + k;