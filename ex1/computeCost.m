function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

%% Looping Implementation
%{
for i = 1:m
  h(i) = 0;
  for j = 1:2
    h(i) = h(i) + (X(i,j) * theta(j));
  end
  J = J + (h(i) - y(i))^2;
end
J = J/(2*m);
%}

%% Vectorized Implementation
h = X * theta;
sqrErrors = (h - y) .^ 2;
J = sum(sqrErrors) / (2*m);

% =========================================================================

end
