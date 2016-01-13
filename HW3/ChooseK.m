function [k] = ChooseK(X, restarts, maxK)

  for i=1:maxK-1
      for j=1:restarts
  [idx, C] = kmeans(X, i);
  bic(j)=BIC(X,C,idx,i);
      end
      k_i(i)=max(bic);
  end

  [val k]=max(k_i);
  end
