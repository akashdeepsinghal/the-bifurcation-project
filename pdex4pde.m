function [c,f,s] = pdex4pde(r,t,u,DuDr)

disp (DuDr);
% Diffusion Coefficients
% Dy = 1.6*10^(-3);
% Dx = 8.0*10^(-3);


Dy = 3;
Dx = 1;


% Constants
A = 2;
L = 1;
u1 = u(1);
u2 = u(2);

B = 3.7; %NOT GIVEN | TO BE CHANGED

c = [1; 1];
f = [Dx; Dy] .* DuDr;

% s1 = A + u1^2*u2 - (B+1)*u1;
% s2 = B*u1 - u1^2*u2;
s1 = (B-1)*u1 + A^2*u2;
s2 = -B*u1 - A^2*u2;
s = [s1; s2];


% a=0.92;
% p=2;
% d1=1;
% d2=3;
% c=[1;1];
% f=[d1;d2].*DuDr;
% s=[a-u(1)*u(2)^p;u(1)*u(2)^p-u(2)];