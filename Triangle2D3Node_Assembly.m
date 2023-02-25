function KK = Triangle2D3Node_Assembly(K,k,i,j,m)

KK = K;
DoF(1:2) = [2*i-1,2*i];
DoF(3:4) = [2*j-1,2*j];
DoF(5:6) = [2*m-1,2*m];
for n1 = 1:6
    for n2 = 1:6
        KK(DoF(n1),DoF(n2)) = KK(DoF(n1),DoF(n2))+k(n1,n2);
    end
end