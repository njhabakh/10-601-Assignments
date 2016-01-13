function [a,b,p] = EM_estimate(a, b, p, X, nIter)

M=2;
K=2;
for i=1:nIter
    [Gamma, Xi] = E_step(a, b, p, X);
    [a, b, p] = M_step(Gamma, Xi, X, M, K);
end

end
