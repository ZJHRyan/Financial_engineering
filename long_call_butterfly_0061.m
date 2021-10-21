clear all %���ԭ������
clc
%3/8/0061Ԫ�󱦻���
k1=14;k2=15;k3=16;c10=10;c20=8.05;c30=7.05; %�����趨

sT=0:1:30;%��Сֵ�����������ֵ
payoff=2000*(max(sT-k1,0)+max(sT-k3,0)-2*max(sT-k2,0))
profit=2000*(max(sT-k1,0)-c10+max(sT-k3,0)-c30-2*max(sT-k2,0)+2*c20)

%ͼ���趨
subplot(1,2,1);%��ͼ
plot(sT,payoff,'-*')
xlabel('sT')
ylabel('payoff')
title('0061 payoff of long a call butterfly strategy')

subplot(1,2,2);
plot(sT,profit,'-*')
xlabel('sT')
ylabel('profit')
title('0061 profit of long a call butterfly strategy')