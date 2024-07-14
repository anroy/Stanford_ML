function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

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
%
% Note: grad should have the same dimensions as theta
%

%% Compute Cost
h = sigmoid(X * theta);
J = ( -y' * log(h) - (1-y)' * log(1-h) ) / m;

%% Compute Gradient
errors = h - y;
grad = ( X' * errors ) / m;

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

%}

% =============================================================

end
