function SSE = ObjFun(x,t,flow,Paw)

R1=x(1);
R2=x(2);
C1=x(3);
C2=x(4);

Paw3 = VEM(t,flow,R1,R2,C1,C2);

SSE = sum((Paw3-Paw).^2);

end

