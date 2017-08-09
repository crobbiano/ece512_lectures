%% ECE512 lecture 9 and 10
clear all; clc;
%% p4.32

x=-6:.01:6;
y=1./(1+exp(-x));
figure(1);clf;

% center lobe
plot(x-6,y,'b'); hold on
plot(-x+6,y,'b')

% left lobe
plot(x-18,y,'r'); hold on
plot(-x-6,y,'r')

% right lobe
plot(x+6,y,'m'); hold on
plot(-x+18,y,'m')


ylim([0 1.5])
xlabel('\Omega')
ylabel('H_D(e^{j\Omega})')
set(gca, 'XTick', [0],'XTickLabel',{})
set(gca, 'YTick', [],'YTickLabel',{})
grid on
