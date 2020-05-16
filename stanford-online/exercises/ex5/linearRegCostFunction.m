function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%




m = size(X, 1);

% reglarized cost function

hypothesis = X * theta;

%set the first theta param zero for using in regularisation 
thetaJ = [0;theta(2:length(theta),1)];

J = sum((hypothesis-y).^ 2)/(2*m) + (lambda/((2*m))*(sum(thetaJ.^2)));
% this is same as below
%J = sum((hypothesis-y).^ 2)/(2*m) + (lambda/((2*m))*(sum(theta.^2)-theta(1,1)^2));

%calculating gradient 

grad = X'*(hypothesis-y)/m + (lambda*thetaJ)/m;


% =========================================================================

grad = grad(:);

end
