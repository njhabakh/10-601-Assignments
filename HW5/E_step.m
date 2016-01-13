function [Gamma, Xi] = E_step(a, b, p, X)
A  = Forward( a,b,p,X );
B  = Backward( a,b,p,X );


for i=1:size(A,1)
    c1=cell2mat(A(i));
    c2=cell2mat(B(i));
    for j=1:size(c1,1)
        den=(c1(j,:)*c2(j,:)');
        g(j,:)=(c1(j,:).*c2(j,:))/den;
    end
    Gamma(i)=mat2cell(g,size(X,2),size(a,1));
end


for i=1:size(A,1)
    c1=cell2mat(A(i));
    c2=cell2mat(B(i));
    xi(1,:,:)=zeros(size(a,2));
    for j=2:size(c1,1)
        den=(c1(j-1,:)*c2(j-1,:)');
        a1=[c1(j-1,:)' c1(j-1,:)'];
        a2=[c2(j,:);c2(j,:)];
        a3=[b(:,X(i,j))' ; b(:,X(i,j))'];
        a4=a;
        xi(j,:,:)=a1.*a2.*a3.*a4/den;
    end
    Xi(i)=mat2cell(xi,size(X,2),size(a,1),size(a,2));
end

Gamma=Gamma';
Xi=Xi';
end
