clear all;clc;close all;

% Ridge Regularization

% load data from .txt file 
filename = 'question1data.txt';
A = importdata(filename);

% centralize X and y
centralized_data=A-ones(size(A,1),1)*mean(A);
X=centralized_data(:,1:9);
y=centralized_data(:,10);

%define regularization parameter
lamda=0:1:10000;

%estimate weight values for all lamda
for i=1:length(lamda)
    estimatedw(:,i)=inv( X.'*X+lamda(i)*eye(9))*X.'*y;
end;

% % alternative to estimate w 
% estimatedw = ridge(y,X,0);

C=jet(size(estimatedw,1));
temp_legend=[];
for j=1:size(estimatedw,1)   
    plot(lamda,estimatedw(j,:),'color',C(j,:))
    hold on;
    xlabel('Lambda')    
end;


legend('w1','w2','w3','w4','w5','w6','w7','w8','w9');


%weights when lamda=3
estimatedw_for_lamda_3=inv( X.'*X+3*eye(9))*X.'*y





