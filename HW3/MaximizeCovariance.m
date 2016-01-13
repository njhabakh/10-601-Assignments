function [sigma] = MaximizeCovariance(X, k, w, mu)
for j=1:k
    s=0;
    for i=1:length(X)
        s=s+w(i,j)*((X(i,:)-mu(j,:))'*(X(i,:)-mu(j,:)));
    end
sigma(:,:,j)=(1/sum(w(:,j)))*s;

end
end
