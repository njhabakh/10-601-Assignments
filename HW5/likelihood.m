function [score] = likelihood(a, b, p, Xtest)
A  = Forward( a,b,p,Xtest );
for i=1:size(A,1)
    c1=A{i};
    score(i)=log(sum(c1(size(Xtest,2),:)));
end
score=score';
end
