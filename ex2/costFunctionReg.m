function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

%% Initialize main vars
h = sigmoid(X * theta);
regTheta = theta;
regTheta(1) = 0;

%% Compute Cost
J = ( -y' * log(h) - (1-y)' * log(1-h) ) / m;
regCost = ( lambda / (2 * m) ) * sum( regTheta.^2 );
J = J + regCost;

%% Compute Gradient
errors = h - y;
grad = ( X' * errors ) / m;
regGrad = ( lambda / m ) * regTheta;
grad = grad + regGrad;


%{
Size of theta:
   28    1
Size of X:
   118    28
Size of y:
   118     1
Size of lambda:
   1   1
Size of h:
   118     1
Size of errors:
   118     1
Size of grad:
   28    1
Size of regCost:
   1   1
Size of regGrad:
   28    1
%}

%{
Arka debug output

disp('Details of X'), details(X);
disp('Details of y'), details(y);
disp('Size of theta: '), disp(size(theta));
disp('Size of X: '), disp(size(X));
disp('Size of y: '), disp(size(y));

disp('Size of h: '), disp(size(h));

disp('Size of log(h): '), disp(size(log(h)));
disp('Size of 1-h: '), disp(size(1-h));
disp('Size of 1-y: '), disp(size(1-y));
disp('Size of log(1-h): '), disp(size(log(1-h)));

disp('Size of errors: '), disp(size(errors));
disp('Size of grad: '), disp(size(grad));

disp('Size of regCost: '), disp(size(regCost));
disp('Size of regGrad: '), disp(size(regGrad));

%}

% =============================================================

end
