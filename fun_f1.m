function f1 = fun_f1(v,ri,ro,t,a)
if a == 0
    a = eps;
end
f1 = (ri*(v + t*(ri - ro))^(ro/(ri - ro))*(- ((720*ri^7 - 3276*ri^6*ro + 6160*ri^5*ro^2 - 6125*ri^4*ro^3 + 3395*ri^3*ro^4 - 994*ri^2*ro^5 + 120*ri*ro^6)*t^7)/(3628800*ri^7 - 15992640*ri^6*ro + 29206080*ri^5*ro^2 - 28275120*ri^4*ro^3 + 15295680*ri^3*ro^4 - 4380480*ri^2*ro^5 + 518400*ri*ro^6) - ((120*v*ri^5*ro - 326*v*ri^4*ro^2 + 329*v*ri^3*ro^3 - 146*v*ri^2*ro^4 + 24*v*ri*ro^5)*t^6)/(3628800*ri^7 - 15992640*ri^6*ro + 29206080*ri^5*ro^2 - 28275120*ri^4*ro^3 + 15295680*ri^3*ro^4 - 4380480*ri^2*ro^5 + 518400*ri*ro^6) + ((30240*ri^7 - 139320*ri^6*ro + 265200*ri^5*ro^2 - 266850*ri^4*ro^3 + 144*ri^4*ro*v^2 + 149610*ri^3*ro^4 - 276*ri^3*ro^2*v^2 - 44280*ri^2*ro^5 + 174*ri^2*ro^3*v^2 + 5400*ri*ro^6 - 36*ri*ro^4*v^2)*t^5)/(3628800*ri^7 - 15992640*ri^6*ro + 29206080*ri^5*ro^2 - 28275120*ri^4*ro^3 + 15295680*ri^3*ro^4 - 4380480*ri^2*ro^5 + 518400*ri*ro^6) + ((7560*ri^5*ro*v - 21600*ri^4*ro^2*v + 22830*ri^3*ro^3*v - 180*ri^3*ro*v^3 - 10560*ri^2*ro^4*v + 210*ri^2*ro^2*v^3 + 1800*ri*ro^5*v - 60*ri*ro^3*v^3)*t^4)/(3628800*ri^7 - 15992640*ri^6*ro + 29206080*ri^5*ro^2 - 28275120*ri^4*ro^3 + 15295680*ri^3*ro^4 - 4380480*ri^2*ro^5 + 518400*ri*ro^6) - ((604800*ri^7 - 2867040*ri^6*ro + 5621760*ri^5*ro^2 - 5832360*ri^4*ro^3 + 10080*ri^4*ro*v^2 + 3373560*ri^3*ro^4 - 22080*ri^3*ro^2*v^2 - 1030320*ri^2*ro^5 + 15720*ri^2*ro^3*v^2 - 240*ri^2*ro*v^4 + 129600*ri*ro^6 - 3600*ri*ro^4*v^2 + 120*ri*ro^2*v^4)*t^3)/(3628800*ri^7 - 15992640*ri^6*ro + 29206080*ri^5*ro^2 - 28275120*ri^4*ro^3 + 15295680*ri^3*ro^4 - 4380480*ri^2*ro^5 + 518400*ri*ro^6) - ((302400*ri^5*ro*v - 979920*ri^4*ro^2*v + 1189800*ri^3*ro^3*v - 15120*ri^3*ro*v^3 - 641520*ri^2*ro^4*v + 25560*ri^2*ro^2*v^3 + 129600*ri*ro^5*v - 10800*ri*ro^3*v^3 + 360*ri*ro*v^5)*t^2)/(3628800*ri^7 - 15992640*ri^6*ro + 29206080*ri^5*ro^2 - 28275120*ri^4*ro^3 + 15295680*ri^3*ro^4 - 4380480*ri^2*ro^5 + 518400*ri*ro^6) + ((7257600*ri^7 - 39242880*ri^6*ro + 90397440*ri^5*ro^2 - 114962400*ri^4*ro^3 + 604800*ri^4*ro*v^2 + 87141600*ri^3*ro^4 - 1959840*ri^3*ro^2*v^2 - 39352320*ri^2*ro^5 + 2379600*ri^2*ro^3*v^2 - 30240*ri^2*ro*v^4 + 9797760*ri*ro^6 - 1283040*ri*ro^4*v^2 + 51120*ri*ro^2*v^4 - 1036800*ro^7 + 259200*ro^5*v^2 - 21600*ro^3*v^4 + 720*ro*v^6)*t)/(3628800*ri^7 - 15992640*ri^6*ro + 29206080*ri^5*ro^2 - 28275120*ri^4*ro^3 + 15295680*ri^3*ro^4 - 4380480*ri^2*ro^5 + 518400*ri*ro^6) + (7257600*ri^6*v - 31985280*ri^5*ro*v + 58412160*ri^4*ro^2*v - 604800*ri^4*v^3 - 56550240*ri^3*ro^3*v + 1959840*ri^3*ro*v^3 + 30591360*ri^2*ro^4*v - 2379600*ri^2*ro^2*v^3 + 30240*ri^2*v^5 - 8760960*ri*ro^5*v + 1283040*ri*ro^3*v^3 - 51120*ri*ro*v^5 + 1036800*ro^6*v - 259200*ro^4*v^3 + 21600*ro^2*v^5 - 720*v^7)/(3628800*ri^7 - 15992640*ri^6*ro + 29206080*ri^5*ro^2 - 28275120*ri^4*ro^3 + 15295680*ri^3*ro^4 - 4380480*ri^2*ro^5 + 518400*ri*ro^6)))/a;
end