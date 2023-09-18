%{ 
   End Semester Project/Viva
   Course : MA205 (Computing Lab)
   Session : 2021-W
   Instructor : Prof. Manoranjan Mishra

   Implemented by - Niraj Kumar
   Entry number - 2020mcb1243
   
%}
%%

function lambda = Gauss_Legendre_weights (n)

                    % get nodes by calling corresponding function
    x = Gauss_Legendre_nodes(n);

                    % get (n+2)th legendre polynomial
    P_n1 = Legendre_poly(n+2);

                    % initialize row vector lambda as zeroes
    lambda = zeros(1,n+1);

                    % calculate the weights and store in lambda row vector
    for i = 1 : n+1
        P_n1_val = subs(P_n1,x(i));
        xi = x(i);
                    % Using formula for weights of gauss legendre method
        lambda(i) = (2*(1-xi^2))/(((n+2)^2)*P_n1_val^2);
    end
end