close all;clc;clear

fplot(@(x) (1*x.^4 + 2*x^3 - 14*x^2 + 2*x +1   ) , [-7 7] )
p = [1 2 -14 2 1];
r = roots(p);

f1=@(x) (1*x.^4 + 2*x.^3 - 14*x.^2 + 2*x +1);

x0=-6;
x1= -4;
tol= 10^(-10);

N = 1000;

disp(['Execution of problem 1 for interval 1 by Secant Method:'])

[ roots,error ] = SecantMethod(f1,x0,x1,tol,N);

x0=-1;
x1= 0;
tol= 10^(-10);

N = 1000;

disp(['Execution of problem 1-b for interval 2 by Secant Method:'])

[ roots,error ] = SecantMethod(f1,x0,x1,tol,N);

x0=0;
x1=1;
tol= 10^(-10);

N = 1000;

disp(['Execution of problem 1-b for interval 3 by Secant Method:'])

[ roots,error ] = SecantMethod(f1,x0,x1,tol,N);


x0=1;
x1= 3;
tol= 10^(-10);

N = 1000;

disp(['Execution of problem 1-b for interval 5  by Secant Method:'])

[ roots,error ] = SecantMethod(f1,x0,x1,tol,N);



syms x;

x0=2;

N=1000;

tol= 10^(-10);

f2=@(x) (4*x^3 + 6*x^2 - 28*x  + 2);

disp(['Execution of problem 1-c by Newton:']);
[X,err]=Newton(x,sym(f2),x0,tol,N);






