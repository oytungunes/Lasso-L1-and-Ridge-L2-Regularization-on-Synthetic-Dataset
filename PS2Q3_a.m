clear all;clc;close all;

% load data from .txt file 
filename = 'question1data.txt';
A = importdata(filename);

% centralize X and y
centralized_data=A-ones(size(A,1),1)*mean(A);
X=centralized_data(:,1:9);
y=centralized_data(:,10);


%estimate weight values
estimatedw=inv(X.'*X)*X.'*y   