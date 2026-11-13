# Numerical Solutions of Partial Differential Equations via Finite Difference Methods

This repository contains MATLAB implementations developed as part of my undergraduate thesis titled **"Finite Difference Method for the Numerical Solutions of Partial Differential Equations"** submitted to the Department of Mathematics, Faculty of Sciences, National Open University of Nigeria. 

The project investigates the discretization of classical partial differential equations (PDEs), implementing explicit and iterative finite difference stencils, stability analyses, and quantitative error benchmarking against exact analytical solutions.

---

## 📂 Repository Structure & Solvers

* **`1d_heat_equation.m`**  
  * **Type:** Parabolic PDE (Explicit Scheme)  
  * **Description:** Simulates 1D transient heat conduction using a forward-difference in time and central-difference in space stencil. Enforces the stability constraint ratio ($\lambda \le 0.5$) and benchmarks grid outputs against exact analytical series solutions.
* **`1d_wave_equation.m`**  
  * **Type:** Hyperbolic PDE (Explicit Central Difference)  
  * **Description:** Models wave propagation and string displacement over time. Tracks velocity and displacement vectors while strictly enforcing the Courant-Friedrichs-Lewy (CFL) stability condition ($c \Delta t / \Delta x \le 1$).
* **`2d_laplace_equation.m`**  
  * **Type:** Elliptic PDE (Iterative 5-Point Stencil)  
  * **Description:** Solves steady-state potential and heat distribution on a 2D square domain using an iterative Gauss-Seidel/Jacobi relaxation method with a convergence tolerance threshold of $10^{-6}$.
* **`2d_poisson_equation.m`**  
  * **Type:** Elliptic PDE with Source Term  
  * **Description:** Extends the 2D elliptic solver to incorporate non-zero source terms (e.g., $f(x,y) = -2\pi^2\sin(\pi x)\sin(\pi y)$) to model internal generation or charge distribution.

---

## 🛠️ Technical Stack & Methods

* **Language:** MATLAB
* **Numerical Techniques:** Finite Difference Discretization, Taylor Series Truncation Error Analysis, Von Neumann Stability Analysis, CFL Condition Monitoring.
* **Validation & Error Metrics:** Solutions are verified against exact analytical expressions using **Root-Mean-Square Error (RMSE)** and **Maximum Absolute Error (MAE)** to quantify convergence rates and numerical precision.

---

## 🚀 How to Run

1. Clone or download this repository:
   ```bash
   git clone [https://github.com/CHIJIOKE222/thesis-matlab-pdes.git](https://github.com/CHIJIOKE222/thesis-matlab-pdes.git)