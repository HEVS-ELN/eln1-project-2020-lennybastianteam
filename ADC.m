clear
close all

path = 'C:\Users\favre\Documents\ELN1Projekt\';

file = [path 'ADC.txt'];
data = readmatrix(file);
time1(:,1) = data(:,1);
USim1(:,1) = data(:,2);
ISim1(:,1) = data(:,3);

SampleFreq = 100e3; %the sample frequency for all the channels together
                 %how does "scan mode work??"

OutputSmpls = 64; %the number of output samples you will convert
                  %How much RAM does the processor have? How much
                  %of this can you use just for your signals?

Vmax = 3.3;        %the maximum voltage we can convert with the ADC

SignalFreq = 5e3;   %The frequency of your signal

%data(:,1) is the time vector exported from LTspice
%data(:,2) is one voltage channel measured
%data(:,3) is another voltage channel measured

%What does the following 5 lines do?

t0 = data(1,1)+rand(1)/SignalFreq;
t1 = (t0:2/(SampleFreq):t0+(OutputSmpls-1)*2/(SampleFreq))';
t2 = t1+1/SampleFreq;
V1 = interp1(data(:,1), data(:,2), t1);
V2 = interp1(data(:,1), data(:,3), t2);

NoiseBits = 3;    %what are noise bits? Related to effective bits of the ADC

%What do these lines do?? What is randn() ?
V1dig=int16((2^15)*(V1/Vmax)+randn(OutputSmpls,1)*(2^NoiseBits));
V2dig=int16((2^15)*(V2/Vmax)+randn(OutputSmpls,1)*(2^NoiseBits));

%What do these lines do??
V1d=double(V1dig)*Vmax/(2^15);
V2d=double(V2dig)*Vmax/(2^15);

figure();
plot(t1,V1,'-');
hold on
plot(t2,V2,'-');
grid
figure();
plot(t1,V1dig,'-');
hold on
plot(t2,V2dig,'-');
grid
figure();
plot(t1,V1d,'-');
hold on
plot(t2,V2d,'-');
grid
