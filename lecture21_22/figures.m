%% ECE512 lecture 20 and 21
clear all; clc;
%% impulse invariant
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

%% LPF
x=-6:.01:6;
y=1./(1+exp(x));

y2=ones(1,1000);
y3=[y2 y];
x3=linspace(0,4, length(y3));
figure(2);clf;

% center lobe
plot(x3,y3); 


ylim([0 1.5])
xlabel('\Omega')
ylabel('|H_D(e^{j\Omega})|')
set(gca, 'XTick', [0],'XTickLabel',{})
set(gca, 'YTick', [],'YTickLabel',{})
grid on

%% rectangular window
figure(3);clf;
x=[-5 -4 -4 -3 -2 -1 0 1 2 3 4 4 5];
y=[0 0 1 1 1 1 1 1 1 1 1 0 0];
plot(x,y)
ylim([0 1.5])
xlabel('n')
ylabel('W_r(n)')
set(gca, 'XTick', [-4 0 4],'XTickLabel',{'-(N-1)','0','N-1'})
set(gca, 'YTick', [],'YTickLabel',{})
grid on
%% window example
figure(4);clf;
subplot(2,1,1)
x=[ 0 1 2 3 4 4 5];
y=[ 1 1 1 1 1 0 0];
plot(x,y)
ylim([0 1.5])
xlabel('\Omega_c')
ylabel('|H_D(e^{j\Omega})|')
set(gca, 'XTick', [0],'XTickLabel',{})
set(gca, 'YTick', [1],'YTickLabel',{'1'})
grid on

subplot(2,1,2)
x=[-5 -4 -4 -3 -2 -1 0 1 2 3 4 4 5];
y=[0 0 1 1 1 1 1 1 1 1 1 0 0];
plot(x,y)
ylim([0 1.5])
xlabel('\Omega_c')
ylabel('|H_D(e^{j\Omega})|')
set(gca, 'XTick', [-4 0 4],'XTickLabel',{'-\Omega_c','0','\Omega_c'})
set(gca, 'YTick', [],'YTickLabel',{})
grid on

%% example 2
figure(5);clf;
subplot(2,1,1)
b = fir1(48,[0.35 0.65]);
freqz(b,1,512)
subplot(2,1,2)
b = fir1(24,[0.35 0.65]);
freqz(b,1,512)

%% hann and hamming window
figure(6);clf;
% x=-10:.1:10;
% y1=sinc(x);
% y2=sinc(.2*x);
% plot(x,y1,x,y2)
% N=13;
% Om=-(N-1)/2:.01:(N-1)/2;
% a1=.3;
% a2=.5*.9;
% y1=a1*sin(Om*N/2)./sin(Om/2) + (1-a1*sin(Om*N/2-N*pi/(N-1)))./(2*sin(Om/2 - pi*(N-1))) + (1-a1*sin(Om*N/2+N*pi/(N-1)))./(2*sin(Om/2 + pi*(N-1)))
% y2=a2*sin(Om*N/2)./sin(Om/2) + (1-a2*sin(Om*N/2-N*pi/(N-1)))./(2*sin(Om/2 - pi*(N-1))) + (1-a2*sin(Om*N/2+N*pi/(N-1)))./(2*sin(Om/2 + pi*(N-1)))
% plot(Om,abs(y1))
L = 48;
wvtool(hamming(L))
wvtool(hann(L))

%% kaiser window
figure(7);clf
x=[0 1 2 3 4 5 5 6 7 7 8 9 9 10]
y1=[1 1 1 1 1 1 0 0 0 .1 .1 .1 0 0];
y2=[.9 .9 .9 .9 .9 .9 0 0 0 .1 .1 .1 0 0];
plot(x,y1,'b')
hold on
plot(x, y2,'b')
ylim([0 1.2])
xlabel('')
ylabel('|H_D(e^{j\Omega})|')
set(gca, 'XTick', [0 5 7 9],'XTickLabel',{'0','\Omega_c','\Omega_a','\Omega_{s/2}'})
set(gca, 'YTick', [.1 .9 1],'YTickLabel',{'S_2','1-S_1','1+S_1'})
grid on