function pdex4

m=0; %slab
r=linspace(0,1,100);
t=linspace(0,400,100);
sol=pdepe(m,@pdex4pde,@pdex4ic,@bc2fn,r,t);
disp(sol);

u1 = sol(:,:,1);
u2 = sol(:,:,2);

figure
surf(r,t,u1)
title('X(r,t)')
xlabel('Distance r')
ylabel('Time t')

figure
surf(r,t,u2)
title('Y(r,t)')
xlabel('Distance r')
ylabel('Time t')