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

y1 = zeros(506,1);

for i=1:506,
  y1(i) = theta'*X(i:i,:)';
end

x1 = Y;

plot(x1,y1,'xr')
xlabel('original price')
ylabel('predicted price')
  