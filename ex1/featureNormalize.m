function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

rowCnt = size(X, 1);
colCnt = size(X, 2);

% 1 x colCnt matrix
mu = mean(X);
sigma = std(X);

% rowCnt x colCnt matrix
mu_matrix = ones(rowCnt, 1) * mu;
% fprintf('mu_matrix %f \n', mu_matrix);

% rowCnt x colCnt matrix
sigma_matrix = ones(rowCnt, 1) * sigma;
% fprintf('sigma_matrix %f \n', sigma_matrix);

% X_norm = X_norm .- mu_matrix;
% X_norm = X_norm ./ sigma_matrix;

% ============================================================

end