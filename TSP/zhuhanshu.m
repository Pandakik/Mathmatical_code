%��һ��
% C=[0,0,2,4,4,6,8,8,3,4,6,3;
%    0,8,4,0,6,4,0,8,3,7,7,9];
% C=C';
clear
data1 = xlsread('F:\������PANZONGYONG\2020���ڳ尡\��ѧ��ģ�尡\��ѵ\���ĸ�����\2020�����ѧ����ѧ��ģ������ѵģ��4\B�⣺���߿ɳ�紫����������·�߹滮\B�⸽��1.xlsx');
x = data1(:,1);
y = data1(:,2);
C = data1(:,1:2);
NC_max=400;
m=32;
Alpha=1;
Beta=1;
Rho=0.2;
Q=20;
[R_best,L_best,L_ave,Shortest_Route,Shortest_Length]=ACATSP(C,NC_max,m,Alpha,Beta,Rho,Q);