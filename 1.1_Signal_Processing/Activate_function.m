
x = -10:0.1:10;
y=1./(1+exp(-x));

% ‘r’曲线颜色，‘lineWidth’曲线宽度
plot(x,y,'r','lineWidth',0.75)

xlabel('x轴')
ylabel('y轴')   
set(gca,'XLim',[-10,10])% $x\in[1,100]$
set(gca,'Ylim',[0,1])% $y\in[1,100]$
%axis([0,16000,0,20*log10(50)])
legend('Sigmod')
grid on
saveas(1,'Sig','png')
close(figure(1))

x = -10:0.1:10;
y=(exp(x)-exp(-x))./(exp(x)+exp(-x));

% ‘r’曲线颜色，‘lineWidth’曲线宽度
plot(x,y,'b','lineWidth',0.75)

xlabel('x轴')
ylabel('y轴')   
set(gca,'XLim',[-10,10])% $x\in[1,100]$
set(gca,'Ylim',[-1,1])% $y\in[1,100]$
%axis([0,16000,0,20*log10(50)])
legend('Tanh')
grid on
saveas(1,'Tan','png')
close(figure(1))

x = -10:0.1:10;
y=x.*(x>=0)+0.*(x<0);

% ‘r’曲线颜色，‘lineWidth’曲线宽度
plot(x,y,'k','lineWidth',0.75)

xlabel('x轴')
ylabel('y轴')   
set(gca,'XLim',[-10,10])% $x\in[1,100]$
set(gca,'Ylim',[0,10])% $y\in[1,100]$
%axis([0,16000,0,20*log10(50)])
legend('ReLU')
grid on
saveas(1,'Relu','png')
close(figure(1))