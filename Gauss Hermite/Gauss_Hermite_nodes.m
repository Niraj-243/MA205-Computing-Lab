%{ 
   End Semester Project/Viva
   Course : MA205 (Computing Lab)
   Session : 2021-W
   Instructor : Prof. Manoranjan Mishra

   Implemented by - Niraj Kumar
   Entry number - 2020mcb1243
   
%}
%%
                    % This function calculates nodes of gauss hermite 
                    % quadrature according to value of n
function x = Gauss_Hermite_nodes(n)
                        % get (n+1)th hermite polynomial by calling 
                        % the required function
    H = Hermite_poly(n+1);

    x = vpasolve(H);    % this is inbuilt matlab function for getting all
                        % roots of an equation
end
