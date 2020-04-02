clear
close all

path = 'C:\Users\favre\Documents\ELN1Projekt\';
time = [];
USim = [];

file = [path 'SimulationProbeModel1.txt'];
data = readmatrix(file);
time1(:,1) = data(:,1);
USim1(:,1) = data(:,2);

file = [path 'SimulationProbeModel2.txt'];
data = readmatrix(file);
time2(:,1) = data(:,1);
USim2(:,1) = data(:,2);

file = [path 'SimulationProbeModel3.txt'];
data = readmatrix(file);
time3(:,1) = data(:,1);
USim3(:,1) = data(:,2);

file = [path 'SimulationProbeModel4.txt'];
data = readmatrix(file);
time4(:,1) = data(:,1);
USim4(:,1) = data(:,2);

file = [path 'SimulationProbeModel5.txt'];
data = readmatrix(file);
time5(:,1) = data(:,1);
USim5(:,1) = data(:,2);

figure();
plot(time1,USim1,'-');
hold on
plot(time2,USim2,'-');
plot(time3,USim3,'-');
plot(time4,USim4,'-');
plot(time5,USim5,'-');
legend('Sim1','Sim2','Sim3','Sim4','Sim5');