% 2D Poisson Equation Solver with Source Term
Lx = 1; 
Ly = 1; 
Nx = 20; 
Ny = 20; 
dx = Lx / (Nx - 1); 
dy = Ly / (Ny - 1);
x = linspace(0, Lx, Nx); 
y = linspace(0, Ly, Ny);
u = zeros(Nx, Ny); 
f = @(x, y) -2 * (pi^2) * sin(pi * x) .* sin(pi * y); 
u(:, 1) = 0; 
u(:, end) = 0; 
u(1, :) = 0; 
u(end, :) = 0; 
[X, Y] = meshgrid(x, y); 
analytical_solution = sin(pi * X) .* sin(pi * Y);

max_iter = 10000;
tolerance = 1e-6; 
for iter = 1:max_iter
    u_old = u;
    for i = 2:Nx-1
        for j = 2:Ny-1
            u(i, j) = 0.25 * (u(i+1, j) + u(i-1, j) + u(i, j+1) + u(i, j-1) - dx^2 * f(x(i), y(j)));
        end
    end
    if max(max(abs(u - u_old))) < tolerance
        break;
    end
end

figure; 
subplot(1,2,1); 
surf(X, Y, u'); 
title('Numerical Solution (2D Poisson)'); 
xlabel('x'); ylabel('y'); zlabel('u'); 
subplot(1,2,2); 
surf(X, Y, analytical_solution'); 
title('Analytical Solution (2D Poisson)'); 
xlabel('x'); ylabel('y'); zlabel('u');