clear all %���ԭ������
clc
%3/8/0061Ԫ�󱦻���
k1=16;c10=7.05;p01=0.01; %�����趨

sT=0:1:30;%��Сֵ�����������ֵ
payoff=2000*(max(sT-k1,0)+max(k1-sT,0));
profit=2000*(max(sT-k1,0)-c10+max(k1-sT,0)-p01);

%ͼ���趨
subplot(1,2,1);%��ͼ
plot(sT,payoff,'-*')
xlabel('sT')
ylabel('payoff')
title('0061 payoff of long straddle')

subplot(1,2,2);
plot(sT,profit,'-*')
xlabel('sT')
ylabel('profit')
title('0061 profit of long straddle')