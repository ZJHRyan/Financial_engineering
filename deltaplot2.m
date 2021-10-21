clear all 
clc 
% 不同股價的賣權delta,以台積電為例
S = 10:10:900; 
K = 500; 
r = 0.00755; 
T = 10/365; 
 v = 0.3216;
% v=[0.3; 0.5; 0.7]
% T=[0.25;0.5;1]

 SNew = repmat(S, length(v), 1); 
vNew = repmat(v, 1, length(S)); 
Pad = ones(size(SNew));  
[CallDelta, PutDelta] = blsdelta(SNew, Pad*K, Pad*r, Pad*T, vNew);  
figure('Units',"normalized", 'Position',[0.05, 0.1, 0.8, 0.8]) 

subplot(1,2,1) 
plot(S, PutDelta,'-*') 
grid on 
title('Delta of put option with different stock price') 
xlabel('Stock Price') 
ylabel('Put Delta') 
grid on
line([500,500], [-1,1],'Color','red','linestyle','--')
% legend('v=0.3','v=0.5', 'v=0.7')
%  legend('T=0.25','T=0.5', 'T=1')
