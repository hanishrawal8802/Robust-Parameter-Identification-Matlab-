clear
clc
close all

T2= load ('Inputs_task2.mat');
flow = T2.flow;
Paw = T2.Paw;
t = T2.t;
RC = T2F(flow,Paw);
R = RC(1);
C = RC(2);
plot(t,Paw,'b')
hold on
FOM1 = FOM(t,flow,R,C);

plot(t,FOM1,'r--')
ylim([0 20])
grid on
xlabel ('time [s]')
ylabel('airway pressure[mbar]')
legend({'Measured data','Fitted FOM'});
