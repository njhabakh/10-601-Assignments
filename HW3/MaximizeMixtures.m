function [t] = MaximizeMixtures(k, w)
for j=1:k
    r(j)=sum(w(:,j))/size(w,1);
end
t=r';
end
