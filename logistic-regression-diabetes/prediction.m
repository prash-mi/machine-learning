%reference https://towardsdatascience.com/end-to-end-data-science-example-predicting-diabetes-with-logistic-regression-db9bc88b4d16
clear ; close all; clc

data = csvread('data.csv');
X = data(:, [1:8]);
y=data(:,9);

[m, n] = size(X);

theta = zeros(n+1, 1);
X = [ones(m,1) X]; 

