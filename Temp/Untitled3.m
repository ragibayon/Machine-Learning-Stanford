data = load('ex1data1.txt');

X = data(:, 1); 
y = data(:, 2);
theta = zeros(2, 1);
m = length(y);
X = [ones(m, 1), data(:,1)];
J =1/(2*m)*sum(power(((X*theta)-y),2));
alpha = 0.01;
%%
for iter = 1:1500
    theta = theta-(alpha.*(1/m)*sum((X*theta-y)))
end


%%

theta=[0;0]
delta = (1/m).*sum(repmat((X*theta - y), 1, size(X,2)).*X)
    
    
theta = theta - (alpha .* delta)'