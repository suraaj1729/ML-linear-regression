
% features.txt text file contains inputs of 13 parameters (506 sets)
load features.txt

% price.txt text file contains the selling prices based on the 13 parameters
load price.txt

% assigning features to X
X = features;
% adding a column of ones with 506 rows to X
X = [ones(506,1),X];

% assigning price to Y
Y = price;

% m-> number of rows
m = 506;

% normal equation formula which gives the parameters for which J is minimum
% J-> cost function
% pinv() function calculates pseudo-inverse of a matrix
theta = pinv(X'*X)*X'*Y;

sum = 0;

% finding the cost function J using the parameters got in theta vector
for i=1:m,
  sum = sum + (theta'*X(i:i,:)'-Y(i))^2;
end

J = sum/(2*506);
disp(J);

disp(theta);