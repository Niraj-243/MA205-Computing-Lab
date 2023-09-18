%{ 
   End Semester Project/Viva
   Course : MA205 (Computing Lab)
   Session : 2021-W
   Instructor : Prof. Manoranjan Mishra

   Implemented by - Niraj Kumar
   Entry number - 2020mcb1243
   
%}
%%

                       % This function calculates weights of gauss hermite 
                       % quadrature according to value of n
function lambda = Gauss_Hermite_weights(n)

                        % get nth hermite polynomial
    H = Hermite_poly(n);   
                        % get the nodes 
    x = Gauss_Hermite_nodes(n);
                        % lambda will store all weights
    lambda = zeros(1,n+1);

                        % calculate all weights using formula for weights
    for i = 1:n+1
        H_val = subs(H,x(i));
        lambda(i) = (2^n)*factorial(n+1)*sqrt(pi)/(((n+1)^2)*H_val^2);
    end
end