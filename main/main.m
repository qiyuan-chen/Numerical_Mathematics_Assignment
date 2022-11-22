clc;
clear;
n=2;
x0=[-1.2;1];
h=[0.6;0.5];
min_h=1e-4;
maxiter=5000;
[x,best_value,iter] = hookejeeves(n, x0, h, min_h, maxiter)

% 文件结构
% func.m保存需要求解的函数
% hookejeeves.m是求解过程
% explore.m是探索步骤

% 结果
% x =
% 
%     0.9633
%     0.9279
% 
% 
% best_value =
% 
%     0.0013
% 
% 
% iter =
% 
%    775
% 
% 书本参考结果
% x=(0.9655,0.9322)
% iter=935
