function div = fun_div(v,ri,ro,t)
    div = (v + (ri - ro)*t)^(ro/(ri-ro));
end