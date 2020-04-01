clear
close all

path = 'C:\Users\favre\Documents\ELN1Projekt\eln1-project-2020-lennybastianteam\data\ConductiveProbe\';
freq = [];
V1=[];
V2=[];
for k=0:4
file = [path 'R10k_' num2str(k) '.csv'];
data = readmatrix(file, 'Range', 2);
freq(:,k+1) = data(:,1);
V2(:,k+1) = 10.^(data(:,3)/20).*exp(1j*data(:,4)*pi/180);
Amp1(:,k+1) = 10.^(data(:,2)/20);
Amp2(:,k+1) = 10.^(data(:,3)/20);
Phase2(:,k+1) = data(:,4)*pi/180;
end

R1 = 10e3;
tanphi = tan(Phase2);
G = Amp2./Amp1;

Rpr = R1./((1./(G.*(sqrt(1+(tanphi.^2)))))-1);
Cpr = (Rpr+R1).*sqrt(((Rpr./(G.*(Rpr+R1))).^2)-1)./(Rpr.*R1.*2.*pi.*freq);
Cpr2 = -tanphi.*(R1+Rpr)./(R1.*Rpr.*2.*pi.*freq);

figure();
plot(freq,Rpr,'-');
legend('Rpr0','Rpr1','Rpr2','Rpr3','Rpr4');
grid
title('Rpr=f(freq)');
figure();
plot(freq,Cpr,'-');
legend('Cpr0','Cpr1','Cpr2','Cpr3','Cpr4');
grid
title('Cpr=f(freq)');
figure();
plot(freq,Cpr2,'-');
legend('Cpr20','Cpr21','Cpr22','Cpr23','Cpr24');
grid
title('Cpr2=f(freq)');