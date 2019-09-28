function Y = LinearTransfer(N,n,mu,Sigma)
%%%% first sample the X 
X = zeros(n,N);
for nn = 1:n
    X(nn,:) = randn(N,1);
end
%%%% using SVD calculate the A b getting the transform Matrix
[U,W,V] = svd(Sigma);
A = U*sqrtm(W)*V';
b = mu;
%%%%%%%% linear transform
Y = A*X +b;
%%%%scatter the x and y
for nn =1:n
scatter(X(nn,:),Y(nn,:))
hold on
end
end
