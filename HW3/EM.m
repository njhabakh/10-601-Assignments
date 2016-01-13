function [t, mu, sigma] = EM(X, k, t0, mu0, sigma0, nIter)
w=Expectation(X, k, t0, mu0, sigma0);
for i=1:nIter
k1=MaximizeMixtures(k, w);
k2=MaximizeMean(X, k, w);
k3=MaximizeCovariance(X, k, w, k2);
w=Expectation(X, k, k1, k2, k3);
end
t=k1;mu=k2;sigma=k3;
end
