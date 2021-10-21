clear all %清除原有数据
clc
%3/8/0061元大宝沪深
k1=16;c10=7.05;p01=0.01; %参数设定

sT=0:1:30;%最小值：步长：最大值
payoff=2000*(max(sT-k1,0)+max(k1-sT,0));
profit=2000*(max(sT-k1,0)-c10+max(k1-sT,0)-p01);

%图形设定
subplot(1,2,1);%附图
plot(sT,payoff,'-*')
xlabel('sT')
ylabel('payoff')
title('0061 payoff of long straddle')

subplot(1,2,2);
plot(sT,profit,'-*')
xlabel('sT')
ylabel('profit')
title('0061 profit of long straddle')