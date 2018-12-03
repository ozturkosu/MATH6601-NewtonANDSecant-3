function [ufun]=myf(u)


n = length(u);
h=1/(n-1) ;
ufun=zeros(n,1) ;

ufun(1)= 0;

for i=2:n-1
    ufun(i) = ( u(i-1) -2*u(i) + u(i+1))/h^2 + exp(u(i));
end

ufun(n) = 0;

end


    