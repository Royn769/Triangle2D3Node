clear;clc;

t = 1;
E = 30*10^6;
Nu = 0.3;
x1 = 0;y1 = 0;
x2 = 0;y2 = 10;
x3 = 20;y3 = 10;
x4 = 20;y4 = 0;

k1 = Triangle2D3Node_Stiffness(x1,x3,x2,y1,y3,y2,E,Nu,t);
k2 = Triangle2D3Node_Stiffness(x1,x4,x3,y1,y4,y3,E.Nu,t);

K = zeros(8,8);
K = Triangle2D3Node_Assembly(K,k1,1,3,2);
K = Triangle2D3Node_Assembly(K,k2,1,4,3);

KK = K(5:end,5:end);
P = [5000,0,5000,0]';
U = KK\P;