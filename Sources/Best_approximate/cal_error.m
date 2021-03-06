clear; clc
N = [18.676323,0.000000,-41.163991,0.000000,30.479727,0.000000,-8.757726,0.000000,0.902064];
xx = -1:0.1:1;
Nx = 0;
for r=1:9
    Nx = Nx+N(r) .*xx .^(9-r);
end
err = 1 ./(1+25 .*xx .^2)-Nx;
plot(xx,err)
E3 = max(abs(err));