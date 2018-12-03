close all;clc;clear

%set up the mesh

n= 1001 ;

h= 1/ (n-1) ;
%x= [0:h:1] ;

%A = diag(ones(N-1,1)) + diag(ones(N-1,1),2) - 2*diag(ones(N,1),1);

%A[2:N-1;2:N-1] =diag(ones(N-1,1)) + diag(ones(N-1,1),2) - 2*diag(ones(N,1),1);



u = zeros(n,1);

tol= 10^(-10);


f=myf(u);
Jacobi=myjacobi(u);

Nmax=10000;
[X,err]=MyNewton(f,Jacobi,u,tol,Nmax);

X

xgraph=linspace(1,1001);

ygraph=X;

figure
plot(ygraph);






