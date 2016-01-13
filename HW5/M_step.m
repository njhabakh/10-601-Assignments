function [a, b, p] = M_step(Gamma, Xi, X, M, K)

p=zeros(K,1);
for j=1:size(X,1)
    c1=cell2mat(Gamma(j));
    p=p+c1(1,:)';
end
p=p/size(X,1);

a=zeros(K,K);
S_sum(1,:,:)=zeros(K,K);
for i=1:size(X,1)
    S_sum(1,:,:)=zeros(K,K);
    c11=cell2mat(Xi(i));
    for j=1:size(c11,1)
        S_sum=S_sum+c11(j,:,:);
    end
    test=reshape(S_sum,K,K);
    a=a+test;
end
a(1,:)=a(1,:)/sum(a(1,:));
a(2,:)=a(2,:)/sum(a(2,:));


b=zeros(K,M);
den=zeros(K,M);
for i=1:size(X,1)
    uni=unique(X(i,:));
    c1=cell2mat(Gamma(i));
    ind=[(X(i,:)==uni(1))' (X(i,:)==uni(2))'];
    b_test=c1'*ind;
    den=den+[sum(c1(:,1)) sum(c1(:,1)); sum(c1(:,2)) sum(c1(:,2))];
    b=b+b_test;
end

    b=b./den;

end
