%% ECE512 lecture 1

clear all; clc;

%% continuous time signals 1
figure(1);clf;
x = [-pi:.01:pi];
sin1=sin(x);sin2=sin(3*x);sin3=sin(5*x);
plot(x, sin1+sin2+sin3)
xlabel('t')
ylabel('x_1(t)')

%% continuous time signals 2
figure(2);clf;
x = [0:.01:6];
plot(x,square(3*x) )
xlabel('t')
ylabel('x_2(t)')
xlim([-1 6])
ylim([-1.1 1.1])

%% discrete time signals 1
figure(3);clf;
x = [-2 -1 0 1 2];
y = [1 1 1.5 1 .5];
stem(x,y)
xlabel('n')
ylabel('x(n)')
xlim([-3 3])
ylim([0 2])
grid


%% digital signals 1
figure(4);clf;
x = [-2 -1 0 1 2];
y = [.5 1 1.5 1 .5];
stem(x,y)
xlabel('n')
ylabel('x_q(n)')
xlim([-3 3])
ylim([0 2])
grid