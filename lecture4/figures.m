%% ECE512 lecture 4

clear all; clc;


%% no region 1
figure(1);clf;


N=10;n0=5;
plot(n0,0,'rx')
xlabel('')
ylabel('')
xlim([-3 4.5])
ylim([0 .2])
grid
set(gca,'XLim', [-N-1 N+1],'XTick',[-N 0 n0],'XTickLabel',{'-N';'0';'n_0';''})  % Set phase axis
set(gca,'YLim', [0 1],'YTick',[0])  % Set phase axis
hold on
text(-6.5,.34,'region of h(-k)')
x = [.5 .18];
y = [0.4 .4];
annotation('arrow',x,y)
x = [.18 .5 ];
y = [0.4 .4];
annotation('arrow',x,y)

text(6.2,.34,'region of x(-n)')
x = [.7 .9];
y = [0.4 .4];
annotation('arrow',x,y)
%% region 1
figure(1);clf;

N=10;n0=5;n=2;
plot(n0,0,'rx')
xlabel('')
ylabel('')
xlim([-3 4.5])
ylim([0 .2])
grid
set(gca,'XLim', [-N-1 N+1],'XTick',[n-N 0 n n0],'XTickLabel',{'n-N';'0';'n'; 'n_0';''})  % Set phase axis
set(gca,'YLim', [0 1],'YTick',[0])  % Set phase axis
hold on
text(-6.5,.34,'h(n-k)')
x = [.58 .25];
y = [0.4 .4];
annotation('arrow',x,y)
x = [.25 .58 ];
y = [0.4 .4];
annotation('arrow',x,y)

text(6.2,.34,'x(k)')
x = [.7 .9];
y = [0.4 .4];
annotation('arrow',x,y)

%% region 2
figure(1);clf;

N=10;n0=5;n=7;
plot(n0,0,'rx')
xlabel('')
ylabel('')
xlim([-3 4.5])
ylim([0 .2])
grid
set(gca,'XLim', [-N-1 N+1],'XTick',[n-N 0 n0 n ],'XTickLabel',{'n-N';'0';'n_0'; 'n';''})  % Set phase axis
set(gca,'YLim', [0 1],'YTick',[0])  % Set phase axis
hold on
text(.5,.64,'h(n-k)')
x = [.75 .42];
y = [0.6 .6];
annotation('arrow',x,y)
x = [.42 .75 ];
y = [0.6 .6];
annotation('arrow',x,y)

text(7.2,.34,'x(k)')
x = [.7 .9];
y = [0.4 .4];
annotation('arrow',x,y)

xbars = [n0 n];
patch( [xbars(1) xbars(1), xbars(2) xbars(2)],[min(ylim) max(ylim) max(ylim) min(ylim)], [1 0.8 0.8])

%% region 3
%% region 2
figure(1);clf;

N=10;n0=5;n=17;
plot(n0,0,'rx')
xlabel('')
ylabel('')
xlim([-.5 4.5])
ylim([0 .2])
grid
set(gca,'XLim', [-.5 n+1],'XTick',[ 0 n0 n-N n ],'XTickLabel',{'0';'n_0'; 'n-N'; 'n'})  % Set phase axis
set(gca,'YLim', [0 1],'YTick',[0])  % Set phase axis
hold on

xbars = [n-N n];
patch( [xbars(1) xbars(1), xbars(2) xbars(2)],[min(ylim) max(ylim) max(ylim) min(ylim)], [1 0.8 0.8])

text(10.7,.34,'x(k)')
x = [.37 .85];
y = [0.4 .4];
annotation('arrow',x,y)

text(10.7,.64,'h(n-k)')
x = [.85 .46];
y = [0.6 .6];
annotation('arrow',x,y)
x = [.46 .85 ];
y = [0.6 .6];
annotation('arrow',x,y)
