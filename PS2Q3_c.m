clear all;clc;close all;

% Lasso Regularization

% load data from .txt file 
filename = 'question1data.txt';
A = importdata(filename);

% centralize X and y
centralized_data=A-ones(size(A,1),1)*mean(A);
X=centralized_data(:,1:9);
y=centralized_data(:,10);

%define regularization parameter
lambda=0:0.01:3;

% estimate coefficients 
estimatedw = lasso(X,y,'Lambda',lambda);


C=jet(size(estimatedw,1));
temp_legend=[];
for j=1:size(estimatedw,1)   
    plot(lambda,estimatedw(j,:),'color',C(j,:))
    hold on;
    xlabel('Lambda')    
end;
legend('w1','w2','w3','w4','w5','w6','w7','w8','w9');

%when labda =3 
estimatedw_lambda_3 = lasso(X,y,'Lambda',3)



