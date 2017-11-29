

[t,y] = ode45(@SIR2,[0 60],[0.8; 0.2; 0]); % initial values for S, I, R

% Plot the solutions for $y_1$ and $y_2$ against |t|.
plot(t,y(:,1),'-',t,y(:,2),'-',t,y(:,3),'-')
title('SIR model with vaccination and medicine, with ODE45');
xlabel('Time t');
ylabel('Solution y');
legend('S','I','R')
