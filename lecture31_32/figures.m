%% ECE512 lecture 31 and 32
clear all; clc;
%% stem1
y=[1 .8 .65];
figure(1); clf;
stem(y)
xlabel('n')
ylabel('x(n)')
xlim([.7 4])
ylim([0 1.3])
set(gca, 'XTick', [1 2 3],'XTickLabel',{'0','1','2'})
set(gca, 'YTick', [],'YTickLabel',{})
text(3.5,.3,'. . .')
%% stem2
y=[1 0 .8 0 .65];
figure(2); clf;
stem(y)
xlabel('n')
ylabel('y(n)')
xlim([.7 6])
ylim([0 1.3])
set(gca, 'XTick', [1 2 3],'XTickLabel',{'0','1','2'})
set(gca, 'YTick', [],'YTickLabel',{})
text(5.5,.3,'. . .')

%% tri1
y=[1 0 1 0 1];
x=[-2 -1 0 1 2];
figure(3); clf;
plot(x,y)
xlabel('\Omega')
ylabel('X(e^j^\Omega)')
% xlim([.7 6])
ylim([0 1.3])
set(gca, 'XTick', [-1 0 1],'XTickLabel',{'-\pi','0','\pi'})
set(gca, 'YTick', [1],'YTickLabel',{'1'})
grid
%% tri2
y=[1 0 1 0 1];
x=[-2 -1 0 1 2];
figure(4); clf;
plot(x,y)
xlabel('\Omega')
ylabel('Y(e^j^\Omega)')
xlim([-3 3])
ylim([0 1.3])
set(gca, 'XTick', [-2 -1 0 1 2],'XTickLabel',{'-\pi','-\pi/2','0','\pi/2','\pi'})
set(gca, 'YTick', [1],'YTickLabel',{'1'})
grid
%% stem3
y=[1 .3 .2 -.2 .4];
figure(5); clf;
stem(y)
xlabel('n')
ylabel('x(n)')
xlim([.7 5.3])
ylim([-.5 1.3])
set(gca, 'XTick', [1 2 3 4 5],'XTickLabel',{'0','1','2', '3','4'})
set(gca, 'YTick', [],'YTickLabel',{})
%% stem4
y=[1 .2  .4];
figure(6); clf;
stem(y)
xlabel('n')
ylabel('y(n)')
xlim([.7 3.3])
ylim([-.5 1.3])
set(gca, 'XTick', [1 2 3],'XTickLabel',{'0','1','2'})
set(gca, 'YTick', [],'YTickLabel',{})
%% stem5
y=[1 0 .2 0 .4];
figure(7); clf;
stem(y)
xlabel('n')
ylabel('u(n)')
xlim([.7 5.3])
ylim([-.5 1.3])
set(gca, 'XTick', [1 2 3 4 5],'XTickLabel',{'0','1','2', '3','4'})
set(gca, 'YTick', [],'YTickLabel',{})
%% tri3 (same as tri1)
y=[1 0 1 0 1];
x=[-2 -1 0 1 2];
figure(8); clf;
plot(x,y)
xlabel('\Omega')
ylabel('X(e^j^\Omega)')
% xlim([.7 6])
ylim([0 1.3])
set(gca, 'XTick', [-1 0 1],'XTickLabel',{'-\pi','0','\pi'})
set(gca, 'YTick', [1],'YTickLabel',{'1'})
grid
%% tri4
y1=[0 1 0];
x1=[-1 0 1];
y2=[0 1 0 1 0];
x2=[-2 -1 0 1 2];
figure(9); clf;
h=plot(x1,y1,x2,y2,'--')
xlabel('\Omega')
% ylabel('X(e^j^\Omega)')
% xlim([.7 6])
ylim([0 1.3])
set(gca, 'XTick', [-1  1],'XTickLabel',{'-2\pi','2\pi'})
set(gca, 'YTick', [],'YTickLabel',{})

h=text(-1.8, .35,'1/2 X(e^j^\Omega^+^\pi)')
set(h,'Rotation',47);
h=text(-.5, .65,'1/2 X(e^j^\Omega)')
set(h,'Rotation',47);
grid

patch( [-.98 -.5 -.02],[0 .48 0], [1 0.8 0.8])
patch( [0.02 .5 .98],[0 .48 0], [1 0.8 0.8])
text(.3,.1,'aliasing')
text(-.7,.1,'aliasing')
%% tri5
y=[1 0 0 1 0 0 1];
x=[-3 -2 -1 0 1 2 3];
figure(10); clf;
plot(x,y)
xlabel('\Omega')
ylabel('X(e^j^\Omega)')
% xlim([.7 6])
ylim([0 1.3])
set(gca, 'XTick', [-2 -1 0 1 2],'XTickLabel',{'-\pi','-\pi/2','0','\pi/2','\pi'})
set(gca, 'YTick', [1],'YTickLabel',{'1'})
grid

%% tri6 (same as tri1)
y=[1 0 1 0 1];
x=[-2 -1 0 1 2];
figure(11); clf;
plot(x,y)
xlabel('\Omega')
ylabel('U(e^j^\Omega)')
% xlim([.7 6])
ylim([0 1.3])
set(gca, 'XTick', [-1 0 1],'XTickLabel',{'-\pi','0','\pi'})
set(gca, 'YTick', [1],'YTickLabel',{'1'})
grid
%% tri7 (same as tri2)
y=[1 0 1 0 1];
x=[-2 -1 0 1 2];
figure(12); clf;
plot(x,y)
xlabel('\Omega')
ylabel('V(e^j^\Omega)')
xlim([-3 3])
ylim([0 1.3])
set(gca, 'XTick', [-2 -1 0 1 2],'XTickLabel',{'-\pi','-\pi/2','0','\pi/2','\pi'})
set(gca, 'YTick', [1],'YTickLabel',{'1'})
grid
text(1.25,.1,'images')
text(-1.8,.1,'images')
%% tri8 (same as tri5)
y=[1 0 0 1 0 0 1];
x=[-3 -2 -1 0 1 2 3];
figure(13); clf;
plot(x,y)
xlabel('\Omega')
ylabel('Y(e^j^\Omega)')
% xlim([.7 6])
ylim([0 1.3])
set(gca, 'XTick', [-2 -1 0 1 2],'XTickLabel',{'-\pi','-\pi/2','0','\pi/2','\pi'})
set(gca, 'YTick', [1],'YTickLabel',{'1'})
grid