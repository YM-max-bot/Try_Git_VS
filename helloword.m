clc;
clear;
% setup;
iBatch=2;
% print('hello world');
m = 16; n = 8;
A = randn(m,n);
b = randn(m,1);
cvx_begin quiet
    variable x(n)
    minimize( norm(A*x-b) )
cvx_end
save(sprintf('data/data_%iBatch.mat', iBatch));


