# MA205
This project aims to study the Gaussian Quadrature methods of Numerical Integration, in particluar, Gauss legendre and Gauss Hermite methods.
The implementation has been done in MATLAB programming language.
The main branch has pptx file having theoretical informations about gaussian quadrature methods.

Gauss-Legendre branch:
In the Gauss-Legendre branch, there are 5 .m files, the work of each of them are explained as comments.
run.m file takes parameters as function, lower limit, upper limit and m (from 0 upto m point formula is applied) and plots 
the value of integral I obtained versus n (parameter, varies from 0 to m).


Gauss-Hermite branch:
In the Gauss-Hermite branch, there are 7 .m files, the work of each of them are explained as comments.
run1.m takes parameters as function and m (from 0 upto m point formula is applied) and plots the value of integral I 
obtained versus n (parameter, varies from 0 to m).(In this case, the limits of integration is from -inf to +inf, which is naturally the limits for gauss hermite)

run2.m takes parameters as function, lower limit ,upper limit and m (from 0 upto m point formula is applied) and plots the value of integral I 
obtained versus n (parameter, varies from 0 to m).(In this case, the limits of integration are made -inf to +inf using arctan transformation.)
