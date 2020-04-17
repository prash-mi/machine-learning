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

%defining the vector hypothesis as h(x) = theta0 + theta1 * x , below is the vector representation 
hypothesis = X * theta;

%cost function is J(theta) = 1/2m * ( Sigma (hypothesis - y)^2); //root mean square

sq = sum((hypothesis .- y) .^ 2);

J = sq/(2*m);

% =========================================================================

end
