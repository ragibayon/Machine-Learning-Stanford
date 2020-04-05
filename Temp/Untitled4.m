data = load('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));
%%

for i=1:size(X,2)
    mu(:,i)=mean(X(:,i));
    sigma(:,i) = std(X(:,i));
    X_norm(:,i)=(X(:,i)-mean(X(:,i)))./std(X(:,i));
    
end
%%
theta = zeros(3, 1);
alpha = 0.01;
num_iters = 400;
% Init Theta and Run Gradient Descent 

%%
h=X*theta;
delta=(1/m).*sum(repmat((h-y),1,size(X,2)).*X);
theta=theta-(alpha*delta)'
%%

p=[1,1650,3]*temp








%%
X_test=[1650,3];
for i=1:size(X_test,2)
X_test_norm(:,i)=(X_test(:,i)-mu(:,i))./sigma(:,i)
end
