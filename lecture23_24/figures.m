%% cheby1.png
x=0:.1:3*pi+.08;
coefficients = polyfit([9.4, 14.65], [2.98, 0], 1);
a = coefficients (1);
b = coefficients (2);
figure(1);clf;
plot(x,.5*sin(.6*x-2.4)+3,'b'); hold on
plot([9.5:.1:16],a*[9.5:.1:16]+b,'b')

x2=16:.1:12.4+4*pi;
plot(x2,.7*sin(1.5*x2-1)-.17,'b');


set(gca, 'XTick', [10 11.9],'XTickLabel',{'\Omega_C','\Omega_a'})
set(gca, 'YTick', [-.87 .53 2.5 3.5],'YTickLabel',{'-S_2','S_2','1-S_1','1+S_1'})
grid

ylabel('|H(e^j^\Omega)|')
xlabel('\Omega (normalized frequency)')

%% maxe1
figure(2);clf
x1=0:.1:pi/2+.1;
plot(x1,-cos(2*x1),'b'); hold on
x2=pi/2:.1:pi+.1;
plot(x2,-.9*cos(2*x2)+.1,'b'); 
plot(linspace(3.171,5,100),linspace(-.7985,-.7985,100),'b')
set(gca, 'XTick', [0 1.571],'XTickLabel',{'0',''})
set(gca, 'YTick', [],'YTickLabel',{'-S_2','S_2','1-S_1','1+S_1'})
grid

text(2.2,.727, 'max [E(e^j^\Omega)] for a set of coefficients')
%% maxe2
figure(2);clf
x1=0:.1:pi/2+.1;
plot(x1,-cos(2*x1),'b'); hold on
x2=pi/2:.1:pi+.1;
plot(x2,-.9*cos(2*x2)+.1,'b'); 
plot(linspace(3.171,5,100),linspace(-.7985,-.7985,100),'b')
set(gca, 'XTick', [0 1.571],'XTickLabel',{'0',''})
set(gca, 'YTick', [],'YTickLabel',{'-S_2','S_2','1-S_1','1+S_1'})
grid

text(1.6,1.727, 'max [E(e^j^\Omega)] for another set of coefficients')
ylim([-1 4])

%% points1.png
x=0:.1:2.5*pi-.65;
coefficients = polyfit([7.2, 16.56], [3.304 -.3756], 1);
a = coefficients (1);
b = coefficients (2);
figure(4);clf;
plot(x,.5*cos(x)+3,'b'); hold on

x2=5*pi+.65:.1:7.5*pi;
plot(x2,.5*cos(x2-pi/2),'b');

plot([7.2:.1:16.56],a*[7.2:.1:16.56]+b,'b')

xpair=[0 pi 2*pi 3*pi-.2 4.5*pi+.2 5.5*pi 6.5*pi 7.5*pi];
ypair=[3.5 2.5 3.5 2.5 .5 -.5 .5 -.5];
xpairdots=[ 3*pi-.2 4.5*pi+.2 ];
ypairdots=[ 2.5 .5 ];

plot(xpair,ypair,'k.')
plot(xpairdots,ypairdots,'ko')

set(gca, 'XTick', [9.2 14.3],'XTickLabel',{'',''})
set(gca, 'YTick', [],'YTickLabel',{'-S_2','S_2','1-S_1','1+S_1'})
grid
ylim([-.5 3.6])
