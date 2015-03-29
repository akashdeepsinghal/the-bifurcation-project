function [c,f,s] = pdex4pde(r,t,u,DuDr)

% Diffusion Coefficients
Dx = 1.6*10^(-3);
Dy = 8.0*10^(-3);

% Constants
A = 2;
L = 1;
u1 = u(1);
u2 = u(2);

B = 1; %NOT GIVEN | TO BE CHANGED

c = [1; 1];
f = [Dx; Dy] .* DuDr;

s1 = A + u1^2*u2 - (B+1);
s2 = B*u1 - u1^2*u2;
s = [s1; s2];