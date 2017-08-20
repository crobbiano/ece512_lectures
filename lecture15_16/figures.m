%% ECE512 lecture 29 and 30

clear all; clc;


%% quantizer stairs1

x=[-4.5:4.5];
y=[-4:5];
figure(1);clf;
stairs(x,y)
hold on
plot([-4:4],[-4:4],'--')
grid
xlim([-4 4])
ylim([-4 4])
text(1,2.5, '$Q[X_n]=\hat{X}_n$','Interpreter','latex')
text(.45,-.15, '$\uparrow \frac{2^{-B}}{2}$','Interpreter','latex')
set(gca, 'XTick', [-4 -3 -2 -1 0 .5 1 2 3 4],'XTickLabel',{'','','','-2^-^B','0','2^-^B','','',''})
xlabel('X_n')
%% quantizer stairs2

x=[-5 -4 -3 -2 -1  0 1 2 3 4 ];
y=[-4 -3 -2 -1 0 0 1 2 3 4];
figure(2);clf;
stairs(x,y)
hold on
plot([-4:4],[-4:4],'--')
grid
xlim([-4 4])
ylim([-4 4])
text(1,2.5, '$Q[X_n]=\hat{X}_n$','Interpreter','latex')
% text(.45,-.15, '$\uparrow \frac{2^{-B}}{2}$','Interpreter','latex')
set(gca, 'XTick', [-4 -3 -2 -1 0 1 2 3 4],'XTickLabel',{'','','','-2^-^B','0','2^-^B','','',''})
xlabel('X_n')

%% quantizer stairs3

x=[-4.5:4.5];
y=[-4:5];
figure(3);clf;
stairs(x,y)
hold on
% plot([-4:4],[-4:4],'--')
grid
xlim([-4 4])
ylim([-4 4])
text(1,2.5, '$Q[X_n]=\hat{X}_n$','Interpreter','latex')
% text(.45,-.15, '$\uparrow \frac{2^{-B}}{2}$','Interpreter','latex')
set(gca, 'XTick', [-4 -3 -2 -1 0 1 2 3 4],'XTickLabel',{'','','','','0','','','',''})
xlabel('X_n')
%% quantizer stairs4

x=[-4:4];
y=[-4:4];
figure(4);clf;
stairs(x,y)
hold on
plot([-4:4],[-4:4],'--')
grid
xlim([-4 4])
ylim([-4 4])
text(1,2.5, '$Q[X_n]=\hat{X}_n$','Interpreter','latex')
% text(.45,-.15, '$\uparrow \frac{2^{-B}}{2}$','Interpreter','latex')
set(gca, 'XTick', [-4 -3 -2 -1 0 1 2 3 4],'XTickLabel',{'','','','','0','','','',''})
xlabel('X_n')
%% input1
x=[-4 -3 -3 -2 -1 0 1 2 3 3 4];
y=[0 0 1 1 1 1 1 1 1 0 0];
figure(5);clf;
stairs(x,y)
ylim([-.1 1.1])
text(.2,.9, '$P_e(x)$','Interpreter','latex')
set(gca, 'XTick', [-3 0 3],'XTickLabel',{'-2^-^B/2','0','2^-^B/2'})
set(gca, 'YTick', [0 1],'YTickLabel',{'0','1/2^-^B'})
grid
xlabel('x')
%% input2
x=[-4 -3 -3 -2 -1 0 0 1 2  3 4];
y=[0 0 1 1 1 0 0 0 0 0 0];
figure(6);clf;
stairs(x,y)
ylim([-.1 1.1])
text(.2,.9, '$P_e(x)$','Interpreter','latex')
set(gca, 'XTick', [-3 0],'XTickLabel',{'-2^-^B/2','0'})
set(gca, 'YTick', [0 1],'YTickLabel',{'0','1/2^-^B'})
grid
xlabel('x')
%% triangle1
x=[-2 0 2 -2];
y=[1 -1 1 1];
figure(6);clf;
plot(x,y)
 ylim([-1.1 1.1])
 xlim([-2.1 2.1])
% text(.2,.9, '$P_e(x)$','Interpreter','latex')
set(gca, 'XTick', [-2 -1 0 1 2],'XTickLabel',{'-2','-1','0','1','2'})
set(gca, 'YTick', [-1 0 1],'YTickLabel',{'-1','0','1'})
xlabel('a_1')
ylabel('a_2')
patch( [-2 0, 0 2],[1 -1 -1 1], [1 0.8 0.8])
