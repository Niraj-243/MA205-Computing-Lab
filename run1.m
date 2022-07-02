%{ 
   End Semester Project/Viva
   Course : MA205 (Computing Lab)
   Session : 2021-W
   Instructor : Prof. Manoranjan Mishra

   Implemented by - Niraj Kumar
   Entry number - 2020mcb1243
   
%}
%%

function T = run1(f,m)

    syms t;         % symbolic constant t

                    % f1 is the actual integrand
    f1 = f*exp(-t^2);
                       % y is function handle form of symbolic expression f
    y = matlabFunction(f1);

                        % Exact value of integral using in-built function
    I_exact = integral(y,-inf,inf);

                    % initialize zero column vectors
    n = zeros(m+1,1);
    I = zeros(m+1,1);
    d = zeros(m+1,1);
    I_actual = zeros(m+1,1);
                    
                    % store the data correspoinding to i+1 point 
                    % gauss legendre rule
    for i=0:m
        n(i+1) = i;
        I(i+1) = Gauss_hermite(f,i);
        I_actual(i+1) = I_exact;
        d(i+1) = I_actual(i+1)-I(i+1);
        
    end

                    % Table T will store values corresponding to 
                    % different types of gauss legendre rule applied
    T = table(n,I,I_actual,d);
                    % Set the suitable variable names
    T.Properties.VariableNames = {'n','Value','Actual Value','Difference'};

                    % plot of interpolated I values versus n
    k = 0:m;
    k_d = 0:0.1:m;
    vq1 = interp1(k,I(k+1),k_d,'spline');
    plot(k_d,vq1);
    hold on;
    plot(k_d,I_exact,'.','Color','r');
    xlabel('Value of n','color','b');
    ylabel('Value of Integral for corresponding value of n ','color','b');
    title('Interpolated Plot : I v/s n for Gauss Hermite Quadrature','color','r');
end