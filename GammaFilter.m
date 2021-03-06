clc;
clear all;
X=importdata('music.txt');
sample=22000;
d=importdata('corrupted_speech.txt');
N=length(X);
tu=0.1:0.1:0.5;
Dk=d(1:N);
M = 30;
mu = 0.001;

tic
for u = 1:length(tu)
    
    
    
    Xk = zeros(N,M);
    Wk = zeros(M,N-M+1);
    Ek=zeros(1,N);
    Y=zeros(1,N);
    W = zeros(M,1);

        
        for i=1:N
            Xk(i,1)=X(i);
            
            for k=2:M
                Xk(i,k) = (1-tu(u))*Xk(max(i-1,1),k) + tu(u)*Xk(max(i-1,1),k-1);
                
            end
            %Calculating Error
            
            Y(i)= W'*Xk(i,:)'; %output
            E = Dk(i) - Y(i); %instantaneous error
            Ek(:,i)=E;
            W = W + 2 * mu * E * Xk(i,:)';
            Wk(:,i)=W;
            
        end
        
        D2 = sum(Dk.^2);
        E2 = sum(Ek.^2);
        f = D2/E2;
        erle(u) = 10*log10(f);
        
       
        
    end

  toc  
  
