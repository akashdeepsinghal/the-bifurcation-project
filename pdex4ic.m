function u0 = pdex4ic(r);
c1 = 10;
c2 = 10;
L = 1;

u0 = [c1*cos(pi*r/L); c2*cos(pi*r/L)];


% a=0.92;
% p=2;
% u_star=a^(1-p);
% v_star=a;
% u0=[u_star+0.6068*cos(10*r);v_star+0.6068*cos(10*r)];