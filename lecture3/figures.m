%% ECE512 lecture 3

clear all; clc;


%% unit 1
figure(1);clf;
x = [-1 0 1 2 3];
y = [0 1 1 1 1];
stem(x,y)
xlabel('n')
ylabel('x(n)')
xlim([-3 4.5])
ylim([0 1.2])
grid

%% unit 2
figure(2);clf;
x = [-1 0 1 2 3 4];
y = [0 0 0 1 1 1];
stem(x,y)
xlabel('n')
ylabel('x(n-2)')
xlim([-3 4.5])
ylim([0 1.2])
grid
%% one sided exponential 1
figure(3);clf;
a=.5;
x = [ -1 0 1 2 3 4];
y = [ 0 a^0 a^1 a^2 a^3 a^4];
stem(x,y)
xlabel('n')
ylabel('y(n)')
xlim([-3 4.5])
ylim([0 1.2])
hold on

grid

%% one sided exponential 2
figure(4);clf;
a=.5;
x = [ -1 0 1 2 3 4];
y =  [0 0 0 a^0 a^1 a^2];
stem(x,y)
xlabel('n')
ylabel('y(n-2)')
xlim([-3 4.5])
ylim([0 1.2])
hold on

grid
