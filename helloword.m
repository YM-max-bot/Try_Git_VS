clc;
clear;
addpath(genpath(pwd));

set(groot, 'defaulttextinterpreter', 'latex');
set(groot, 'defaultaxesticklabelinterpreter', 'latex');
set(groot, 'defaultaxesfontname', 'latex');
set(groot, 'defaultlegendinterpreter', 'latex');
set(groot, 'defaultlinelinewidth', 2);
set(groot, 'defaultstemlinewidth', 2);
run('/rds/general/user/yz7219/home/Main/cvx/cvx_setup.m');
iBatch=str2double(getenv('PBS_ARRAY_INDEX'));
%disp(iBatch);
%rng(iBatch);
% print('hello world');
m = 16; n = 8;
A = randn(m,n);
b = randn(m,1);
cvx_begin quiet
    variable x(n)
    minimize( norm(A*x-b) )
cvx_end
save(sprintf('data/data_%d.mat', iBatch));


