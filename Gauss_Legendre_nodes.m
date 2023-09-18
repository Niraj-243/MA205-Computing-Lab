%{ 
   End Semester Project/Viva
   Course : MA205 (Computing Lab)
   Session : 2021-W
   Instructor : Prof. Manoranjan Mishra

   Implemented by - Niraj Kumar
   Entry number - 2020mcb1243
   
%}
%%

function x = Gauss_Legendre_nodes(n)      
                    % vpasolve calculates all the roots equation passed
                    % vpasolve is inbuilt function
    x(1:n+1) = vpasolve(Legendre_poly(n+1));   
end