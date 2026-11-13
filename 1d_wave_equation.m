% 1D Wave Equation Solver (Explicit Central Difference Method)
L = 1; 
T = 0.1; 
c = 1; 
Nx = 50; 
Nt = 100; 
dx = L / (Nx - 1); 
dt = T / Nt;
x = linspace(0, L, Nx); 
u = sin(pi * x); 
v = zeros(size(u)); 
u_new = zeros(size(u));
u_old = u;

analytical_solution = @(x, t) cos(pi * t) * sin(pi * x);

for n = 1:Nt
    for i = 2:Nx-1
        u_new(i) = 2*u(i) - u_old(i) + (c*dt/dx)^2 * (u(i+1) - 2*u(i) + u(i-1));
    end 
    u_old = u; 
    u = u_new; 
    u(1) = 0; 
    u(end) = 0;
end

figure; 
plot(x, u, 'b', 'LineWidth', 2);
hold on;
plot(x, analytical_solution(x, T), 'r--', 'LineWidth', 2); 
title('1D Wave Equation'); 
xlabel('Position (x)'); 
ylabel('Displacement (u)'); 
legend('Numerical Solution', 'Analytical Solution');