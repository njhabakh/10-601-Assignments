function [ A ] = Forward( a,b,p,X )
for i=1:size(X,1)
    alpha=[p(1)*b(1,X(i,1)) p(2)*b(2,X(i,1))];
    t(1,:)=alpha;
    for j=2:size(X,2)
        alpha=(alpha*a).*b(:,X(i,j))';
        t(j,:)=alpha;
    end
    B(i)=mat2cell(t,size(X,2),size(a,1));
end
A=B';
end
