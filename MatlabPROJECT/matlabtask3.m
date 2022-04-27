clear
clc
close all

T3 = load ('Inputs_task3.mat');
t = T3.t;
flow = T3.flow;
Paw = T3.Paw;
tau = T3.tau;
Prms = T3F(t,flow,Paw,tau);

R1 = Prms(1);
R2 = Prms(2);
C1 = Prms(3);
C2 = Prms(4);
Paw1 = VEM(t,flow,R1,R2,C1,C2);
plot(t,Paw,'b')
hold on
plot(t,Paw1,'r--')
grid on
xlabel ('time [s]')
ylabel('airway pressure [mbar]')
legend('Measured data','Fitted VEM');

