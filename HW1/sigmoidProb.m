function [p] = sigmoidProb(y, x, w)
d=0;
for i=1:length(w)
d=d+w(i)*x(i);
end
s=1/(1+exp(-d));
if y==1
p=s;
end
if y==0
p=1-s;
end
end
