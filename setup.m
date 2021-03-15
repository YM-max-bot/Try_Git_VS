%% setup
% cvx setup;
LASTN = maxNumCompThreads(1); % require 1 CPU
iBatch = str2num(getenv('PBS ARRAY INDEX'));
rng(iBatch); % change the seed for each loop, otherwise the default seed is always the same

addpath(genpath(pwd));

set(groot, 'defaulttextinterpreter', 'latex');
set(groot, 'defaultaxesticklabelinterpreter', 'latex');
set(groot, 'defaultaxesfontname', 'latex');
set(groot, 'defaultlegendinterpreter', 'latex');
set(groot, 'defaultlinelinewidth', 2);
set(groot, 'defaultstemlinewidth', 2);

run('/rds/general/user/yz7219/home/Main/cvx/cvx_setup.m');
% % % run('/rds/general/user/yx2718/home/yang/cvx/cvx_setup.m');
% % 
% iBatch = str2double(getenv('PBS_ARRAY_INDEX'));
% % disp(iBatch);
% % rng(iBatch);