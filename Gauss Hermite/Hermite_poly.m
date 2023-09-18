%{ 
   End Semester Project/Viva
   Course : MA205 (Computing Lab)
   Session : 2021-W
   Instructor : Prof. Manoranjan Mishra

   Implemented by - Niraj Kumar
   Entry number - 2020mcb1243
   
%}
%%
                      % This function generates hermite polynomial using
                      % physicist's Hermite polynomial formula
function H = Hermite_poly(n)

    syms t;                 % symbolic constant t
                            % physicist's Hermite polynomial formula
    H = ((-1)^n)*exp(t^2)*diff(exp(-t^2),n);
    H = simplify(H);        % simplify to get better expression
end