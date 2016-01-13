function [w] = logisticRegressionWeights(xTrain, yTrain, w0, nIter)

w=w0;
step=0.1;
for i=1:nIter
for k=1:length(w)
    grad(k)=0;
for j=1:length(yTrain)
    grad(k)=grad(k)+xTrain(j,k)*(yTrain(j)-sigmoidProb(1,xTrain(j,:),w));
end
end
w=w+step*grad.';
end
end
