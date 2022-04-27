function RC = T2F(flow,Paw)
Flow1 =[];
v(1) =0;
for i=2:length(flow)
    v(i)=v(i-1)+0.01*flow(i);
    Flow1(end+1)= v(i);
end
V = v';
A=[flow V];
matrix = A\Paw;
R=matrix(1,:);
C=1./matrix(2,:);
RC=[R C];
end
