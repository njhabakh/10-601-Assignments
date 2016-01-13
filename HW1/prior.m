function [p] = prior(yTrain)
uni=unique(yTrain);
for i=1:length(uni)
    c=0;
    for j=1:length(yTrain)
        if(yTrain(j)==uni(i))
            c=c+1;
        end
    end
    k(i)=c/length(yTrain);
end
p=k.';

end
