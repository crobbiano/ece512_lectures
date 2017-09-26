%% ECE512 lecture 11 and 12
clear all; clc;


%% remark 6 
figure(1);clf;
theta=0:.01:2*pi;
ring=exp(j*theta);
plot(ring)
hold on
plot(exp(j*.000001),'or')
plot(exp(j*pi/4),'or')
plot(exp(j*pi/2),'or')
plot(exp(j*pi*3/4),'ro')
plot(exp(j*pi),'or')
plot(exp(j*pi*5/4),'or')
plot(exp(j*pi*6/4),'or')
plot(exp(j*pi*7/4),'or')
plot(exp(j*pi*8/4),'or')
xlim([-1.1 1.1])
ylim([-1.1 1.1])
grid
set(gca, 'XTick', [0],'XTickLabel',{'0'})
set(gca, 'YTick', [0],'YTickLabel',{'0'})
text( .8, .7, '2\pi/N')
plot([-sqrt(2)/2 sqrt(2)/2], [-sqrt(2)/2 sqrt(2)/2],'k')
plot([-sqrt(2)/2 sqrt(2)/2], [sqrt(2)/2 -sqrt(2)/2],'k')
plot([0 0], [-1 1],'k')
plot([-1 1], [0 0],'k')
xlabel('Real')
ylabel('Imaginary')

%% mod 1
figure(2);clf;
x=[0 1 2 3 4 5 ];
y=[3 2 1 3 2 1];
stem(x,y)
xlim([-1 6])
ylim([0 4])
xlabel('n, N=3')
text(3,3.1,'x(3 mod 3)','rotation',40)
text(4,2.1,'x(4 mod 3)','rotation',40)
text(5,1.1,'x(5 mod 3)','rotation',40)

%% circle 1
figure(3);clf;
x=[-3 -2 -1 0 1 2 3 4 5 6];
y=[0 0 0 2 1.2 .7 .4 0 0 0];
subplot(2,1,1)
stem(x,y)
xlim([-3 6])
ylim([0 3])
set(gca, 'XTick', [0],'XTickLabel',{'0'})
set(gca, 'YTick', [0],'YTickLabel',{'0'})
grid
x=[-3 -2 -1 0 1 2 3 4 5 6];
y=[0 0 0 .7 .4 2 1.2 0 0 0];
subplot(2,1,2)
stem(x,y)
xlim([-3 6])
ylim([0 3])
xlabel('n')
set(gca, 'XTick', [0],'XTickLabel',{'0'})
set(gca, 'YTick', [0],'YTickLabel',{'0'})
text(3,2.1,'x_1(n) = x((n+2))_4R_4(n)')
grid

%% conv 1
figure(3);clf;
x=[-1 0 1 2 3 ];
y=[0 1 2 0 0];
subplot(3,1,1)
stem(x,y)
xlim([-2 3.4])
ylim([0 2.5])
set(gca, 'XTick', [0],'XTickLabel',{'0'})
set(gca, 'YTick', [0],'YTickLabel',{'0'})
text(2,1.8,'x(n)')
xlabel('n')
grid
x=[0 1];
y=[-1 1];
subplot(3,1,2)
stem(x,y)
xlim([-2 3.4])
ylim([-1.2 1.2])
text(2,.6,'h((-m))_2')
xlabel('m')
set(gca, 'XTick', [0],'XTickLabel',{'0'})
set(gca, 'YTick', [0],'YTickLabel',{'0'})
grid
subplot(3,1,3)
x=[0 1];
y=[1 -1];
stem(x,y)
xlim([-2 3.4])
ylim([-1.2 1.2])
xlabel('m')
text(2,.6,'h((1-m))_2')
set(gca, 'XTick', [0],'XTickLabel',{'0'})
set(gca, 'YTick', [0],'YTickLabel',{'0'})
grid