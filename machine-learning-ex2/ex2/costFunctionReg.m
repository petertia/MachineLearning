function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta



h = sigmoid(X*theta);
posValue = -y'*log(h);
negValue = (1-y)'*log(1-h);


h_new = h(2:end,:);
theta_new = zeros(size(theta));
theta_new(2:end,:) = theta(2:end,:);
X_new = X(2:end,:);
y_new = y(2:end,:);

J = [(1/m)*(posValue-negValue)]+(theta_new'*theta_new*(lambda/(2*m)));

grad = (1/m)*(h-y)'*X+(lambda/m)*theta_new';




% =============================================================

end
