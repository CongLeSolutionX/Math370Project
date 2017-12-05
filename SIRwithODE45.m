%SIR with medicine and vaccines

function [t, y] = SIRwithODE45(S, I, R, beta, gamma, v, m)

y0 = [S I R];
tspan = [0 60];

% S is y(1), I is y(2)
[t, y] = ode45(@(t,y) [-(beta*y(1)*y(2)) - v*y(1); 
    beta*y(1)*y(2) - gamma*y(2) - m*y(2); 
    gamma*y(2) + v*y(1) + m*y(2)], tspan, y0);