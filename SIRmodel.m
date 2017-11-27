
function dx = sir(t, x)
  dx = [0; 0; 0];
  beta = .003; 
  delta = 1;

  dx(1) = -beta * x(1) * x(2);
  dx(2) = beta * x(1) * x(2) - delta * x(2);
  dx(3) = delta * x(2);
 

options = odeset('RelTol', 1e-4, 'NonNegative', [1 2 3]);

[t,x] = ode45('sir', [0 10], [1000 1 0], options);
plot(t,x);
legend('S', 'I', 'R');
end 