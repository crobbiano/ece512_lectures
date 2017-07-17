%% ECE512 lecture 3

clear all; clc;


%% sample 1
figure(1);clf;
x=0:.01:3*pi;
y1=sin(2*x)+2;
y2=sin(4*x)+2;
stem([0 pi/2 pi 3*pi/2 2*pi 5*pi/2],[2 2 2 2 2 2])
hold on
plot(x,y1,'-',x,y2,'--')
ylim([0 4])
xlim([0 9])
set(gca, 'XTick', [0 pi/2 pi 3*pi/2 2*pi 5*pi/2],'XTickLabel',{'0'; 'T'; '2T' ;'3T'; '4T'; '5T'})
xlabel('t')
legend('sampled values','x_1(t)','x_2(t)')

%% fft 1
figure(2); clf;
x1=-5:.1:5;
y1=awgn(ones(1, length(x1)), 20);
subplot(3,2,1)
plot(x1,y1)
fftx1=fft(y1);
magx1=fftshift(abs(fftx1))
title('x(t)')
set(gca, 'YTickLabel',{})
set(gca, 'XTick', [0 ],'XTickLabel',{'0'})
subplot(3,2,2)
plot(linspace(-10,10,length(magx1)),magx1)
xlim([-.9 .9])
set(gca, 'XTick', [-.2 0 .2],'XTickLabel',{'-\omega_m', '0', '\omega_m'})
set(gca, 'YTickLabel',{})
title('X(\omega)')

x2=-5:5;
y2=ones(1, length(x2));
subplot(3,2,3)
stem(x2,y2)
fftx2=fft(y2);
magx2=fftshift(abs(fftx2))
title('x(t)')
ylim([0 2])
xlim([-3.5 3.5])
set(gca, 'XTick', [0 ],'XTickLabel',{'0'})

subplot(3,2,4)
x3=-6:3:6;
y3=ones(1, length(x3));
stem(x3,y3)
xlim([-5 5])
set(gca, 'XTick', [-3 0 3],'XTickLabel',{'-\omega_s', '0', '\omega_s'})
% set(gca, 'YTickLabel',{})
ylim([0 2])
title('X(\omega)')

% x1=-5:.1:5;
% y1=awgn(ones(1, length(x1)), 10);
x1sample=linspace(-5,5,6);

y1sample=[y1(1) y1(20) y1(40) y1(60) y1(80) y1(100)];
subplot(3,2,5)

hold on
plot(x1,y1)
stem(x1sample, y1sample)
fftx1=fft(y1);
magx1=[0.269988016701518,0.158216120871190,1.87283489215076,1.10973425600810,0.374549873310637,0.963911702279940,0.766108454063297,0.141041347739805,0.650161335487000,0.795412910467717,1.12174681010299,0.225436408904242,0.314509322547159,1.28680607742369,0.887701425250347,0.772949026092142,0.819453308538479,1.18270073108834,1.81061408440612,0.565763200524473,0.421160690716082,0.823801040153088,0.424404319094880,0.534693875919970,0.835109559368012,0.523441384461972,0.424189821437213,0.864925416159054,0.0697853438243827,0.726233138217219,100.739991322854,0.726233138217219,0.0697853438243827,0.894357254409702,0.585182071455234,1.55080172985960,0.539537422548252,0.524356958520812,0.0697853438243827,0.726233138217219,100.739991322854,0.726233138217219,0.0697853438243827,0.655815965011684,0.394628923477207,0.851571269610748,1.18839681796707,1.31847820332786,0.0697853438243827,0.726233138217219,100.739991322854,0.726233138217219,0.0697853438243827,1.31847820332786,1.18839681796707,0.851571269610748,0.394628923477207,0.655815965011684,0.0697853438243827,0.726233138217219,100.739991322854,0.726233138217219,0.0697853438243827,0.524356958520812,0.539537422548252,1.55080172985960,0.585182071455234,0.894357254409702,0.0697853438243827,0.726233138217219,100.739991322854,0.726233138217219,0.0697853438243827,0.864925416159054,0.424189821437213,0.523441384461972,0.835109559368012,0.534693875919970,0.424404319094880,0.823801040153088,0.421160690716082,0.565763200524473,1.81061408440612,1.18270073108834,0.819453308538479,0.772949026092142,0.887701425250347,1.28680607742369,0.314509322547159,0.225436408904242,1.12174681010299,0.795412910467717,0.650161335487000,0.141041347739805,0.766108454063297,0.963911702279940,0.374549873310637,1.10973425600810,1.87283489215076,0.158216120871190,0.269988016701518];
title('x(t)')
xlabel('t')
set(gca, 'YTickLabel',{})
set(gca, 'XTick', [0 ],'XTickLabel',{'0'})
subplot(3,2,6)
plot(linspace(-10,10,length(magx1)),magx1)
xlim([-2.5 2.5])
set(gca, 'XTick', [-2 -.2  .2 2],'XTickLabel',{'-\omega_s',  '-\omega_m', '\omega_m',  '\omega_s'})
set(gca, 'YTickLabel',{})
title('X(\omega)')
xlabel('\omega')

