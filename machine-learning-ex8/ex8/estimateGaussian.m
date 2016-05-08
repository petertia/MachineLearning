function [mu sigma2] = estimateGaussian(X)
%ESTIMATEGAUSSIAN This function estimates the parameters of a 
%Gaussian distribution using the data in X
%   [mu sigma2] = estimateGaussian(X), 
%   The input X is the dataset with each n-dimensional data point in one row
%   The output is an n-dimensional vector mu, the mean of the data set
%   and the variances sigma^2, an n x 1 vector
% 

% Useful variables
[m, n] = size(X);

% You should return these values correctly
mu = zeros(n, 1);
sigma2 = zeros(n, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the mean of the data and the variances
%               In particular, mu(i) should contain the mean of
%               the data for the i-th feature and sigma2(i)
%               should contain variance of the i-th feature.
%

mu = mean(X,1);
sigma2 = (var(X).*(m-1)./m);
%sigma2 = (1/m)*(X-diag(mu)*ones(size(X)).^2);

% for i=1:m
%     c(i,:) = X(i,:)-mu(i);
% end
% 
% c2 = c.^2;
% sigma2 = sum(c2,2)/m;

%sigma2 = (c.^2)/m;
% was returnting column vector instead of row vector for sigma2 and mu
% misread return nx1 vector as mx1 vector





% =============================================================


end
