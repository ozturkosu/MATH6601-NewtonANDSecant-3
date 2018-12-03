function J1=myjacobi(u)

n = length(u);

h= 1/(n-1) ;

J1=zeros(n,n) ;

J1(1,1)=1 ;
for i=2:n-1
    J1(i,i-1) = 1/h^2;
    J1(i, i) = -2/h^2 + exp(u(i));
    J1(i,i +1) =1/h^2;
end

J1(n,n) = 1;

end

