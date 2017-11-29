%SIR2 with medicine and vaccines

function dydt = SIR2(~,y)

S = y(1);
I = y(2);
%R = y(3);

beta = 0.8;
gamma = 0.5;
N = 1;
v = 0.0; % placeholder value
m = 0.1; % placeholder value

dydt = [-(beta*S*I) - v*S; 
    beta*S*I - gamma*I - m*I; 
    gamma*I + v*S + m*I];
