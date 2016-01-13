function [ B ] = Backward( a,b,p,X )

for i=1:size(X,1)
    beta=[1 ; 1];
    t(25,:)=beta;
    for j=24:-1:1
        beta=a*(b(:,X(i,j+1)).*beta);
        t(j,:)=beta';
    end
    C(i)=mat2cell(t,size(X,2),size(a,1));
end
B=C';
end
