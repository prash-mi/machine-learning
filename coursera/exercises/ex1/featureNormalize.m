function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
%X_norm = X; % X's value is copied to X_norm, its not like the reference variable would point to the reference
%mu = zeros(1, size(X, 2));
%sigma = zeros(1, size(X, 2));

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

mn = mean(X);
stdDeviation = std(X); 

%Substract the mean value if the feature from the dataset
X = X .- mn;

% After subtracting the mean, additionally scale (divide) the feature values by their respective \standard deviations."

X_norm = X ./ stdDeviation;


%return the values, as it will be required while prediction 
mu = mn;
sigma = stdDeviation;




% ============================================================

end
