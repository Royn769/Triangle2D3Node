function k = Triangle2D3Node_Stiffness(xi,xj,xm,yi,yj,ym,E,Nu,t)

A_m = [1,xi,yi;1,xj,yj;1,xm,ym];
A = abs(det(A_m/2));
betai = yj-ym;
betaj = ym-yi;
betam = yi-yj;
gammai = xm-xj;
gammaj = xi-xm;
gammam = xj-xi;
B = [betai,0,betaj,0,betam,0;...
    0,gammai,0,gammaj,0,gammam;...
    gammai,betai,gammaj,betaj,gammam,betam]/(2*A);

D = E/(1-Nu^2)*[1,Nu,1,0;0,0,(1-Nu)/2];
k = t*A*B'*D*B;