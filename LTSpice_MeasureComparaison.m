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
USim5(:,1) = data(:,2);
ISim5(:,1) = data(:,3);

path = 'C:\Users\favre\Documents\ELN1Projekt\Mesures\Humidity';

file = [path '0.csv'];
data = readmatrix(file);
timem1(:,1) = data(:,1);
Umes11(:,1) = data(:,2);
Umes21(:,1) = data(:,3);

file = [path '1.csv'];
data = readmatrix(file);
timem2(:,1) = data(:,1);
Umes12(:,1) = data(:,2);
Umes22(:,1) = data(:,3);

file = [path '2.csv'];
data = readmatrix(file);
timem3(:,1) = data(:,1);
Umes13(:,1) = data(:,2);
Umes23(:,1) = data(:,3);

file = [path '3.csv'];
data = readmatrix(file);
timem4(:,1) = data(:,1);
Umes14(:,1) = data(:,2);
Umes24(:,1) = data(:,3);

file = [path '4.csv'];
data = readmatrix(file);
timem5(:,1) = data(:,1);
Umes15(:,1) = data(:,2);
Umes25(:,1) = data(:,3);

path = 'C:\Users\favre\Documents\ELN1Projekt\SimulationProbeModelU';

file = [path '1.txt'];
data = readmatrix(file);
timesim1(:,1) = data(:,1);
USimes1(:,1) = data(:,2);

file = [path '2.txt'];
data = readmatrix(file);
timesim2(:,1) = data(:,1);
USimes2(:,1) = data(:,2);

file = [path '3.txt'];
data = readmatrix(file);
timesim3(:,1) = data(:,1);
USimes3(:,1) = data(:,2);

file = [path '4.txt'];
data = readmatrix(file);
timesim4(:,1) = data(:,1);
USimes4(:,1) = data(:,2);

file = [path '5.txt'];
data = readmatrix(file);
timesim5(:,1) = data(:,1);
USimes5(:,1) = data(:,2);

figure();
plot(timem1,Umes11,'-');
hold on
plot(timem2,Umes12,'-');
plot(timem3,Umes13,'-');
plot(timem4,Umes14,'-');
plot(timem5,Umes15,'-');
grid
xlabel('time [s]');
ylabel('Voltage [V]');
title('Measured input voltage in function of time');
legend('Mes1','Mes2','Mes3','Mes4','Mes5');

figure();
plot(timem1,Umes21,'-');
hold on
plot(timem2,Umes22,'-');
plot(timem3,Umes23,'-');
plot(timem4,Umes24,'-');
plot(timem5,Umes25,'-');
plot(timesim1,USimes1,'-');
plot(timesim2,USimes2,'-');
plot(timesim3,USimes3,'-');
plot(timesim4,USimes4,'-');
plot(timesim5,USimes5,'-');
grid
xlabel('time [s]');
ylabel('Voltage [V]');
title('Measured output voltage in function of time');
legend('Mes1','Mes2','Mes3','Mes4','Mes5','Sim1','Sim2','Sim3','Sim4','Sim5');

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

Rmes1 = 5000*Umes21./(Umes11-Umes21);
Rmes2 = 5000*Umes22./(Umes12-Umes22);
%Rmes3 = 5000*Umes23./(Umes13-Umes23);
Rmes4 = 5000*Umes24./(Umes14-Umes24);
Rmes5 = 5000*Umes25./(Umes15-Umes25);

figure();
plot(time1,Rsim1,'-');
hold on
plot(time2,Rsim2,'-');
plot(time3,Rsim3,'-');
plot(time4,Rsim4,'-');
plot(time5,Rsim5,'-');
plot(timem1,Rmes1,'-');
plot(timem2,Rmes2,'-');
%plot(timem3,Rmes3,'-');
plot(timem4,Rmes4,'-');
plot(timem5,Rmes5,'-');
grid
xlabel('time [s]');
ylabel('Impedance [Ohm]');
title('Simulated impedance in function of time');
legend('Sim1','Sim2','Sim3','Sim4','Sim5','Mes1','Mes2','Mes4','Mes5');