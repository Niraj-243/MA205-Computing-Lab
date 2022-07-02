%{ 
   End Semester Project/Viva
   Course : MA205 (Computing Lab)
   Session : 2021-W
   Instructor : Prof. Manoranjan Mishra

   Implemented by - Niraj Kumar
   Entry number - 2020mcb1243
   
%}
%%

function I = Gauss_legendre( f ,a,b, n)
    I = 0;                              % Initialize I with 0
    syms t;                             % symbolic constant t

    g = subs(f,((b-a)*t/2)+(b+a)/2);    % Transformation to make limit of 
    g = (b-a)*g/2;                      % integration -1 to 1

    g = simplify(g);                    % simplify expression of g

    x = Gauss_Legendre_nodes(n);        % get the nodes by calling the
                                        % corresponding function 

    lambda = Gauss_Legendre_weights(n); % get the weights by calling the
                                        % corresponding funtion 

    for i = 1:n+1                       % Calculating ∑lambda_i*f(x_i)
        f_val = subs(g,x(i));
        I = I + f_val*lambda(i);
        I = simplify(I);                % simplify to get value in better
    end                                 % form
end