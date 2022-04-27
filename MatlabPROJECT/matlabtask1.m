clear
clc
close all

T1 = load ('Inputs_task1.mat');
t = T1.t;
flow = T1.flow;
R = 0.007;      
C = 55;         
R1 = 0.006;     
R2 = 0.004;     
C1 = 60;        
C2 = 20;        
Paw = FOM(t,flow,R,C);
Vaw = VEM(t,flow,R1,R2,C1,C2);
subplot(1,2,1)
plot(t,Paw)
grid on
xlabel ('time [s]')
ylabel('airway pressure[mbar]')
subplot(1,2,2)
plot(t,Vaw)
grid on
xlabel ('time [s]')
ylabel('airway pressure[mbar]')

