# MA205 (Computing Lab, Numerical Analysis)
# Summary:

This project aims to implement generalized Gaussian Quadrature methods of Numerical Integration, in particluar, Gauss Legendre and Gauss Hermite methods.

Generally, the Gauss Legendre Quadrature method is used to calculate numerical integral when the limits are -1 to 1. In this project, I have written program which
can calculate the integral using Gauss Legendre Quadrature method even when the limits are not -1 to 1. They can be any real number or even infinite.

Similarly, the Gauss Hermite Quadrature method is used to calculate tne integral when the limit is form -inf to +inf. I have written program in such a way that Gauss
Hermite method works for even finite limits.

The program calculates the integral I using different values of parameter (n, like 1 point method, 2 point method etc.) and then plots the Spline Interpolated curve of 
I vs n. This curve actually tells us how rapidly the obtained value converges to the actuall value as we increase n.

# The implementation has been done in MATLAB programming language.
