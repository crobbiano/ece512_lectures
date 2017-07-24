%% ECE512 lecture 9 and 10

clear all; clc;


%% p4.32
figure(1);clf;
subplot(2,1,1)
w=0:.01:pi;
H=2*cos(2.*w).*exp(-j*2.*w);
plot(w,abs(H))
set(gca,'XLim', [0 pi],'XTick',[ 0 pi/4 pi/2 3*pi/4 pi],'XTickLabel',{'0';'\pi/4'; '\pi/2'; '3\pi/4';'\pi'})  % Set phase axis
set(gca,'YLim', [0 2])  % Set phase axis
grid
xlabel('\omega')
ylabel('|H(\omega)|')

subplot(2,1,2)
plot(w,angle(H))
set(gca,'XLim', [0 pi],'XTick',[ 0 pi/4 pi/2 3*pi/4 pi],'XTickLabel',{'0';'\pi/4'; '\pi/2'; '3\pi/4';'\pi'})  % Set phase axis
set(gca,'YLim', [-2 2])  % Set phase axis
grid
xlabel('\omega')
ylabel('\theta(\omega)')

%% triangles1
%% fft 1
figure(1); clf;
magx1=zeros(1,101);
magx1(51)=100;
plot(linspace(-10,10,length(magx1)),magx1)
xlim([-.9 .9])
ylim([0 200])
set(gca, 'XTick', [0],'XTickLabel',{ '0'})
set(gca, 'YTick', [0 100],'YTickLabel',{'0','1'})
ylabel('X(\omega)')
xlabel('\omega')
grid


figure(2); clf;
magx1(41)=100;magx1(51)=100;magx1(61)=100;
plot(linspace(-10,10,length(magx1)),magx1)
xlim([-2.5 2.5])
ylim([0 200])
set(gca, 'XTick', [-2 0 2],'XTickLabel',{'-2\pi/T_s',  '0',  '2\pi/T_s'})
set(gca, 'YTick', [0 100],'YTickLabel',{'0','1/T_s'})
ylabel('X_s(\omega)')
xlabel('\omega')
grid

figure(3); clf;
magx1(41)=100;magx1(51)=100;magx1(61)=100;
plot(linspace(-10,10,length(magx1)),magx1)
xlim([-2.5 2.5])
ylim([0 200])
set(gca, 'XTick', [-2 0 2],'XTickLabel',{'-2\pi',  '0',  '2\pi'})
set(gca, 'YTick', [0 100],'YTickLabel',{'0','1/T_s'})
ylabel('X_s(e^{j\omega})')
xlabel('\Omega')
grid

%% stem1
figure(4); clf;
N=5;
x=[-N-2 -N-1 -N -2 -1 0 1 2 N N+1 N+2];
y=[ 0 0 1 1 1 1 1 1 1 0 0]
stem(x,y)
ylim([0 2])
xlim([-N-3 N+3])
set(gca, 'XTick', [-N 0 N ],'XTickLabel',{'-N', '0', 'N'})
text(-4, .5, '. . . . .')
text(3, .5, '. . . . .')
xlabel('n')
ylabel('x(n)')

%% sinc1
figure(5);clf;
N=3;
O=-3*pi:.1:3*pi;
f=sin(O.*(N-.5))./sin(O./2);
plot(O, f)
ylim([-2 6])
xlim([-2.2*pi 2.2*pi])
set(gca, 'XTick', [-2*pi -pi 0 pi 2*pi ],'XTickLabel',{'-2\pi', '-\pi', '0', '\pi', '2\pi'})
set(gca, 'YTick', [0 5],'YTickLabel',{'0','2N+1'})
xlabel('\Omega')
ylabel('X(e^{j\Omega})')
grid