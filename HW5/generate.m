function [x] = generate(a, b, p, T)

n=rand;
if n<p(1)
    state(1)=1;
else
    state(1)=2;
end


for i=2:T
    n=rand;
    if n<a(state(i-1),1)
        state(i)=1;
    else
        state(i)=2;
    end
end

for i=1:T
    n=rand;
    if n<b(state(i),1)
        x(i)=1;
    else
        x(i)=2;
    end
end


end
