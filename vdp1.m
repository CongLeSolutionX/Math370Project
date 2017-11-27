function dydt = vdp1(t,y)

beta = 0.8;
gamma = 0.5;
N = 1;

dydt = [-(beta*y(1)*y(2))/N; beta*y(1)*y(2)/N - gamma*y(2); gamma*y(2)];