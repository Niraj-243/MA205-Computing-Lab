%{ 
   End Semester Project/Viva
   Course : MA205 (Computing Lab)
   Session : 2021-W
   Instructor : Prof. Manoranjan Mishra

   Implemented by - Niraj Kumar
   Entry number - 2020mcb1243
   
%}
%%

                      % This function calculates integration of
                      % exp(-t^2)*f(t) with t varying from -inf to +inf
                      % using gauss hermite quadrature method

function I = Gauss_hermite(f,n)
                        
    I = 0;                              % Initialize I with 0
                                        
    x = Gauss_Hermite_nodes(n);         % get nodes
                        
                                        % get weights
    lambda = Gauss_Hermite_weights(n);

                                        % Calculating ∑lambda_i*f(x_i)
    for i = 1:n+1       
        g_val = subs(f,x(i));
        I = I + g_val*lambda(i);
                                        % simlify to get better expression
        I = simplify(I);    
    end
    I = double(I);           % get value in decimel point form
end
