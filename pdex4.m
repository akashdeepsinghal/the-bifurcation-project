function pdex4
m = 0;
r = [0 0.005 0.01 0.05 0.1 0.2 0.5 0.7 0.9 0.95 0.99 0.995 1];
t = [0 0.005 0.01 0.05 0.1 0.5 1 1.5 2];

sol = pdepe(m,@pdex4pde,@pdex4ic,@pdex4bc,r,t);
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