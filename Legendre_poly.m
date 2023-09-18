%{ 
   End Semester Project/Viva
   Course : MA205 (Computing Lab)
   Session : 2021-W
   Instructor : Prof. Manoranjan Mishra

   Implemented by - Niraj Kumar
   Entry number - 2020mcb1243
   
%}
%%

function P = Legendre_poly(n)
    syms t;                     % symbolic constant t
    f = (t^2-1)^n;
                                % nth legendre polynoial using rodriguez's
                                % formula
    P = diff(f,n)/(2^n*factorial(n));  
    P = simplify(P);            % simplify the expression 
end