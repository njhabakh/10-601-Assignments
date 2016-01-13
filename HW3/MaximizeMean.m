function [mu] = MaximizeMean(X, k, w)
for j=1:k
    mu(j,:)=(1/sum(w(:,j)))*(w(:,j)'*X);
end
end
