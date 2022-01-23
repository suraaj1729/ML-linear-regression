
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

% n-> number of columns , m-> number of rows
n = 14;
m = 506;

% assigning the learning factor alpha to 0.0000059
alpha = 0.0000059;

% assigning initial random values for theta vector
theta = [36.46;-0.108;0.0464;0.02056;2.6;-17.767;3.6;0;-1.5;0.3;-0.01;-1;0;-0.52476];

% loop running 250 times
for z=1:250,
  
  % arr stores the current values of theta vector
  arr = [0;0;0;0;0;0;0;0;0;0;0;0;0;0];
  
  % loop running for all columns of X
  for j=1:n,
    sum = 0;
    % loop runs for all rows of X
    for k=1:m,
      % adding the derivative of cost function J with respect to theta(j)
      sum = sum + (theta'*X(k:k,:)'-Y(k))*X(k,j);
    endfor
    a = sum/m;
    % updating arr values
    arr(j) = theta(j) - alpha*a;
  endfor
  
  % assigning new values for theta vector
  theta = arr;
  sum = 0;
  
  % calculating the cost function J until it reaches a minima
  for i=1:m,
    sum = sum + (theta'*X(i:i,:)'-Y(i))^2;
  end

  J = sum/(2*m);
  % displaying cost function J in every iteration
  disp(J)
end
 % displaying the final theta vector (parameters of the hypothesis equation)
disp(theta)


  

