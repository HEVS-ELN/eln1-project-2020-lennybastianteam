clear
close all

Y =[1 2 3 4 5];
R = [481.8e3 15.96e3 7.076e3 4.206e3 565];
Ycalc = -0.829*log(R) +10.5;
plot(R,Y);
hold on 
plot(R,Ycalc);
plot(R,round(Ycalc));
legend('Y','Ycalc','Yround');
xlabel('Impedance');
ylabel('Echelle');
grid;