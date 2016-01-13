function [M,V]=likelihood(xTrain,yTrain)
uni=unique(yTrain);
for k=1:length(uni)
d=(yTrain==uni(k));
for i=1:size(xTrain,2)
M(i,k)=(xTrain(:,i).'*d)*(1/sum(d));
        end
        end

        for k=1:length(uni)
        d=(yTrain==uni(k));
        for i=1:size(xTrain,2)
        V(i,k)=((xTrain(:,i)-M(i,k)).^2).'*d*(1/sum(d));
        end
        end
        end
