function [x,FvalAtRoot,converge] = FindRoot(fh, dfh, x0) % function definition line
% H1: FindRoot uses Newton's Method to find the root of a function 
% Help Text:
% Input arguments:
% fh = function handle of the function sent
% dfh = function handle of the 1st derivative of the function sent
% x0 = initial guess of the value of the root
% Output Arguments:
% x = value of the root
% FvalAtRoot = function value at the root f(x)
% converge = flag variable = 1 if the method converges to x or 0 if the
%            method does not converge after 20 iterations.

% intialize variables
steps = 0;  % steps keeps track of the number of iterations

x = x0;     % intialize x to the initial guess of the root value

tolerance = 1e-8; % tolerance used to determine if convergence is reached

PercentChange = 1;  % decimal % change in the value of x from the previous 
                   % iteration value of x.
% while loop to continue iterations until either convergence is reached 
% (PercentChange < tol) or 100 steps are completed.

while ( (PercentChange > tolerance) && (steps < 1000) )
    Xold = x;  % set the old value of x to the current value
    
    % compute the new value of x, notice that in order to evaluate f(x) and
    % df(x) the function feval (function evaluation) must be used because f
    % and df are function handles.  A handle is a reference to where to find
    % the function and not the actual function itself.  feval finds the
    % function and evaluates it at x.
    
    x = x - feval(fh,x)/feval(dfh,x);  % evaluates x - f(x)/df(x)
    steps = steps + 1;  % add one to steps
    PercentChange = abs((x - Xold)/x);  % computes the % change from Xold to x
end

% the if else structure determines if convergence occured 
if PercentChange <= tolerance
    converge = 1;  % convergence occured
else
    converge = 0;  % convergence did not occur
end

FvalAtRoot = feval(fh,x);  % computes f(x) at the final value of x
