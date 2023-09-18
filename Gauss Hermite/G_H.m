%{ 
   End Semester Project/Viva
   Course : MA205 (Computing Lab)
   Session : 2021-W
   Instructor : Prof. Manoranjan Mishra

   Implemented by - Niraj Kumar
   Entry number - 2020mcb1243
   
%}
%%
            % This function transforms a definite integral with finite 
            % limits to definite integral with limits from -inf to +inf
            % to calculate integral using gauss hermite quadrature rule
function I = G_H(f,a,b,n)
    syms t;                             % symbolic constant t
    
                                        % Transformation to make limit of 
    g = subs(f,((b-a)*atan(t)/pi)+a+((b-a)/2)); % integration -inf to inf
    g = (b-a)*g/(pi*(1+t^2));                      
    g = g*exp(t^2);        
    g = simplify(g);                    % simplify expression of g

    I = Gauss_hermite(g,n);             
end