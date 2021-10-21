clear all %���ԭ������
clc
%3/8/0061Ԫ�󱦻���
k1=14;k2=15;p10=1;p20=0.01; %�����趨

sT=0:1:30;%��Сֵ�����������ֵ
payoff=2000*(max(k2-sT,0)-max(k1-sT,0))
profit=2000*(max(k2-sT,0)-p10-max(k1-sT,0)+p20)

%ͼ���趨
subplot(1,2,1);%��ͼ
plot(sT,payoff,'-*')
xlabel('sT')
ylabel('payoff')
title('0061 payoff of short a put strategy')

subplot(1,2,2);
plot(sT,profit,'-*')
xlabel('sT')
ylabel('profit')
title('0061 profit of short a put strategy')