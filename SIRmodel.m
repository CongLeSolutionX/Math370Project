%SIR model 
 
%%Function definition
% Imlements a SIR infection model
%   dS/dt = -beta SI
%   dI/dt = beta SI - delta I
%   dR/dt = delta I
%
% Inputs:
%   t - Time variable: not used here because our equation
%       is independent of time, or 'autonomous'.
%   x - Independent variable: this contains three
%       populations (S, I, and R)
% Output:
%   dx - First derivative: the rate of change of the populations
 
function dx = SIRmodel(x)
  dx = [0; 0; 0];
  beta = .003; 
  delta = 1;
 
  dx(1) = -beta * x(1) * x(2);
  dx(2) = beta * x(1) * x(2) - delta * x(2);
  dx(3) = delta * x(2);


  %%Use ODEset to set our options:
 % Set our preferences for ode45 
 % The default relative tolerance is 1e-4.
 % To set or ouput to non-negative, 
 % we provie an array listing each population that we want to constrain.
 % Since this example has 3 populations, we pass the array [1 2 3]
 options = odeset('RelTol', 1e-4, 'NonNegative', [1 2 3]);
end 
 
 
 
 
%%Model the population:
 % we will model an infection of a population of 1000 healthy individual
 % and 1 sick person.
 % The time interval will be from 1 to a unitless 10. 
 
% Use ode45 to solve our ODE
% Place the time points in a vector 't'
% Place the solution in a vector 'x'
[t,x] = ode45('SIR', [0 10], [1000 1 0], options);
plot(t,x);
legend('S', 'I', 'R');
 
 
 
 
