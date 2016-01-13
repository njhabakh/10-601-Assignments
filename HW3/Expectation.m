function [w] = Expectation(X, k, t, mu, sigma)

for i=1:length(X)
w_t=0;
for j=1:k
w_t=w_t+ mvnpdf(X(i,:),mu(j,:),sigma(:,:,j))*t(j);
end
for j=1:k
w(i,j)=mvnpdf(X(i,:),mu(j,:),sigma(:,:,j))*t(j)/w_t;
end

end

end