function K = assemStiffness(K,k,i,j)

ke = [k -k; -k k];
K(i,i) = K(i,i) + ke(1,1);
K(i,i) = K(i,i) + ke(1,1);
K(i,j) = K(i,j) + ke(1,2);
K(j,i) = K(j,i) + ke(2,1);
K(j,j) = K(j,j) + ke(2,2);

clear all;
clc;

node = [1 0 0; 2 0 0; 3 0 0];
element = [1 2; 2 3];
%------------------------------------------------------
dof=length(node(1,:));
k=[100 200];
K=zeros(dof);
u=ones(dof,1)*1e6;
f=ones(dof,1)*1e6;
ele_sum=length(element(1,:));
for i=1:ele_sum
    K=assemStiffness(K,k(i),element(i,1),element(i,2));
end