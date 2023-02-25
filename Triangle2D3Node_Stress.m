function stress = Triangle2D3Node_Stress(Xi,Xj,Xm,Yi,Yj,Ym,E,Nu,t,u)

C_m = [1,Xi,Yi;1,Xj,Yj;1,Xm,Ym];
C = abs(det(C_m)/2);

Betai = Yj-Ym;
Betaj = Ym-Yi;
Betam = Yi-Yj;
Gammai = Xm-Xj;
Gammaj = Xi-Xm;
Gammam = Xj-Xi;

D = [Betai,0,Betaj,0,Betam,0;...
    0,Gammai,0,Gammaj,0,Gammam;...
    Gammai,Betai,Gammaj,Betaj,Gammam,Betam]/(2*A);
S = E/(1-Nu^2)*[1,Nu,0;Nu,1,0;0,0,(1-Nu)/2];

stress = S*D*u;