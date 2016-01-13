function [ t ] = naiveBayesClassify( xTest,M,V,p )
for i=1:length(xTest)
    for j=1:length(p)
        prod=p(j);
        for k=1:size(xTest,2)
            data1(k)=log(normpdf(xTest(i,k),M(k,j),sqrt(V(k,j))));
            %data1(k)=log((1/sqrt(2*pi*V(k,j)))*exp((-0.5*(xTest(i,k)-M(k,j))^2)/V(k,j)));

       end
        data1=[data1 log(p(j))];
        data2(j)=exp(logProd(data1));

        data1 = [];
    end
    [maxp(i), l(i)] = max(data2);
end
t=l.';
end
