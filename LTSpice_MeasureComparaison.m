clear
close all

path = 'C:\Users\favre\Documents\ELN1Projekt\SimulationProbeModel';

file = [path 'UI1.txt'];
data = readmatrix(file);
time1(:,1) = data(:,1);
USim1(:,1) = data(:,2);
ISim1(:,1) = data(:,3);

file = [path 'UI2.txt'];
data = readmatrix(file);
time2(:,1) = data(:,1);
USim2(:,1) = data(:,2);
ISim2(:,1) = data(:,3);

file = [path 'UI3.txt'];
data = readmatrix(file);
time3(:,1) = data(:,1);
USim3(:,1) = data(:,2);
ISim3(:,1) = data(:,3);

file = [path 'UI4.txt'];
data = readmatrix(file);
time4(:,1) = data(:,1);
USim4(:,1) = data(:,2);
ISim4(:,1) = data(:,3);

file = [path 'UI5.txt'];
data = readmatrix(file);
time5(:,1) = data(:,1);
ISim5(:,1) = data(:,3);
USim5(:,1) = data(:,2);

figure();
plot(time1,USim1,'-');
hold on
plot(time2,USim2,'-');
plot(time3,USim3,'-');
plot(time4,USim4,'-');
plot(time5,USim5,'-');
grid
xlabel('time [s]');
ylabel('Voltage [V]');
title('Simulated output voltage in function of time');
legend('Sim1','Sim2','Sim3','Sim4','Sim5');

figure();
plot(time1,ISim1,'-');
hold on
plot(time2,ISim2,'-');
plot(time3,ISim3,'-');
plot(time4,ISim4,'-');
plot(time5,ISim5,'-');
grid
xlabel('time [s]');
ylabel('Current [A]');
title('Simulated current in function of time');
legend('Sim1','Sim2','Sim3','Sim4','Sim5');

Rsim1 = USim1./ISim1;
Rsim2 = USim2./ISim2;
Rsim3 = USim3./ISim3;
Rsim4 = USim4./ISim4;
Rsim5 = USim5./ISim5;

figure();
plot(time1,Rsim1,'-');
hold on
plot(time2,Rsim2,'-');
plot(time3,Rsim3,'-');
plot(time4,Rsim4,'-');
plot(time5,Rsim5,'-');
grid
xlabel('time [s]');
ylabel('Impedance [Ohm]');
title('Simulated impedance in function of time');
legend('Sim1','Sim2','Sim3','Sim4','Sim5');