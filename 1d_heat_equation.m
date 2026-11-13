% 1D Heat Equation Solver (Explicit Finite Difference Method)
L = 1; 
T = 0.1; 
alpha = 0.01; 
Nx = 50; 
Nt = 500; 
dx = L / (Nx - 1); 
dt = T / Nt; 
x = linspace(0, L, Nx);

u = sin(pi * x);
u_new = u; 
analytical_solution = @(x, t) exp(-pi^2 * alpha * t) * sin(pi * x);

for n = 1:Nt
    for i = 2:Nx-1
        u_new(i) = u(i) + alpha * dt / dx^2 * (u(i+1) - 2*u(i) + u(i-1));
    end
    u = u_new; 
    u(1) = 0; 
    u(end) = 0;
end

figure;
plot(x, u, 'b', 'LineWidth', 2); 
hold on; 
plot(x, analytical_solution(x, T), 'r--', 'LineWidth', 2); 
title('1D Heat Equation'); 
xlabel('Position (x)'); 
ylabel('Temperature (u)'); 
legend('Numerical Solution', 'Analytical Solution');