function Prms = T3F(t,flow,Paw,tau)
RC = T2F(flow,Paw);

R=RC(1);
C=RC(2);

R1=0.5*R;
R2=R-R1;

C2=(tau)./R2;
C1=((C.^-1)-(C2.^-1)).^-1;

initial=[R1 R2 C1 C2];

option=optimset('MaxFunEvals',10000,'TolFun',1e-6);
x=fminsearch(@(x) ObjFun(x,t,flow,Paw),initial,option);

Prms = x;

R1=x(1);
R2=x(2);
C1=x(3);
C2=x(4);

end