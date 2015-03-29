function [pl,ql,pr,qr] = pdex4bc(xl,ul,xr,ur,t)
pl = [0; ul(2)]; 
ql = [1; 0];     
pr = [ur(1)-1; 0]; 
qr = [0; 1];     