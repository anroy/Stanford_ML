function [theta, cost] = ar_gradientDescent(X, y, theta, alpha, num_iters)

%% Arka 2018-06-12 Copied from gradientDescent.m in Ex1.

%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
cost = 0.0;

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

	%% Compute Gradient
	h = sigmoid(X * theta);
	errors = h - y;
    theta_change = (alpha/m) * (X' * errors);
    theta = theta - theta_change;
    
	%% Compute Cost for new theta
	h = sigmoid(X * theta);
	cost = ( -y' * log(h) - (1-y)' * log(1-h) ) / m;

	disp('iter:'), disp(iter);
	disp('theta_change:'), disp(theta_change);
	disp('cost:'), disp(cost);
	disp(' ');

    % ============================================================

end

end
