%% ECE512 lecture 4

clear all; clc;


%% region 1
figure(1);clf;

plot(n0,0,'rx')
xlabel('')
ylabel('')
xlim([-3 4.5])
ylim([0 .2])
grid
N=10;n0=5;
set(gca,'XLim', [-N-1 N+1],'XTick',[-N 0 n0],'XTickLabel',{'-N';'0';'n_0';''})  % Set phase axis
set(gca,'YLim', [0 1],'YTick',[0])  % Set phase axis
