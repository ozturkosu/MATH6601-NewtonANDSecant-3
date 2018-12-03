function [uout,err]=MyNewton(f,Df,u,tol,N)

% Input Arguments:
% - x, the symbolic variable we are passing the function of
% - f, the symbolic function we have in terms of x
% - x0, the initial guess, starting point of our iteration
% - tol, the desired tolerance up to which we accept our solution
% - N, the max number of iterations reached in case of NOT convergence

% Output Arguments:
% - X is the vector of iterates
% - err is the vector of all errors at each iteration


flag=1; % case of insuccess
n=length(u);
%uout=zeros(n,1);
 
err=zeros(n,1); % initialize the output to zero

uout=u; % first entry of the array X of iterates is the initial guess
%previousu=zeros(n,1);
jacobiMatrix=Df;
functionF=f;


maxe=0;
for i=1:N    
        previousu=uout;
        uout= uout - inv(jacobiMatrix)*functionF;
        err=abs(uout - previousu);
       
        disp(['it is in ',num2str(i),' steps.']);     
        maxe = max(err); 
        if (maxe<tol)
                %this is the check of convergence of our iterations. In
                %positive case, we change the value of our flag variable to 0
            flag=0;
            %root=X(i+1);
            disp(['We have converged to the root, r =  in ',num2str(i),' steps.']);
           
        break;
        elseif(i==N)   
            disp('We have NOT converged. We have reached the maximum number of steps allowed.');
            break;
        end
        
        jacobiMatrix=myjacobi(uout);
        functionF=myf(uout);
end 
    
end