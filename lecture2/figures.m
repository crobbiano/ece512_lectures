%% ECE512 lecture 2

clear all; clc;

%% delta 1
figure(1);clf;
x = [-2 -1 0 1 2];
y = [0 0 1 0 0];
stem(x,y)
xlabel('n')
ylabel('\delta(n)')
xlim([-3 3])
ylim([0 1.2])
grid


%% unit 1
figure(2);clf;
x = [-2 -1 0 1 2 3 4];
y = [0 0 1 1 1 1 1];
stem(x,y)
xlabel('n')
ylabel('u(n)')
xlim([-3 4.5])
ylim([0 1.2])
grid

%% one sided exponential 1
figure(2);clf;
a=.5;
x = [-2 -1 0 1 2 3 4];
y = [0 0 a^0 a^1 a^2 a^3 a^4];
stem(x,y)
xlabel('n')
ylabel('x(n) = a^n')
xlim([-3 4.5])
ylim([0 1.2])
hold on

x = [0 1 2 3 4];
y = [a^0 a^1 a^2 a^3 a^4];
plot(x,y,'--')
grid
