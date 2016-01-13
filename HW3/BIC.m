function [ bic ] = BIC(X, C, idx, k)

M=size(C,2);
R=length(X);
uni=unique(idx);
s=0;
for i=1:k
    t=(idx==uni(i));
    for j=1:length(X)
        if(t(j)==1)
            s=s+norm(X(j,:)-C(i,:))^2;
        end
    end
end
sigma=(1/(M*(length(X)-k)))*s;


L=0;
for i=1:k;
    R_n=sum(idx==uni(i));
    L=L+(-0.5*R_n*log(2*pi)-0.5*M*R_n*log(sigma)-0.5*(R_n-k)+R_n*log(R_n)-R_n*log(R));
end


bic=L-0.5*k*(M+1)*log(R);


end
