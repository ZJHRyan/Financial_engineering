clear all %清除原有数据
clc
%3/8/0061元大宝沪深
k1=14;k2=15;k3=16;c10=10;c20=8.05;c30=7.05; %参数设定

sT=0:1:30;%最小值：步长：最大值
payoff=2000*(max(sT-k1,0)+max(sT-k3,0)-2*max(sT-k2,0))
profit=2000*(max(sT-k1,0)-c10+max(sT-k3,0)-c30-2*max(sT-k2,0)+2*c20)

%图形设定
subplot(1,2,1);%附图
plot(sT,payoff,'-*')
xlabel('sT')
ylabel('payoff')
title('0061 payoff of long a call butterfly strategy')

subplot(1,2,2);
plot(sT,profit,'-*')
xlabel('sT')
ylabel('profit')
title('0061 profit of long a call butterfly strategy')