function [cls] = logisticRegressionClassify(xTest, w)

for j=1:length(xTest)
p=sigmoidProb(0,xTest(j,:),w);
[the_max, cls1(j)] = max([p,1-p]);
cls1(j)=cls1(j)-1;
end
cls=cls1.';
end
