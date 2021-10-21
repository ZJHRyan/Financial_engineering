clear all
clc
% 不同到期日的卖权vega
S = 50:150;
K = 100;
r = 0.0075;
T = [1/12; 6/12; 1];
v = 0.1;

SNew = repmat(S, length(T), 1);
TNew = repmat(T, 1, length(S));
Pad = ones(size(SNew));

[CallDelta, PutDelta] = blsdelta(SNew, Pad*K, Pad*r, TNew, Pad*v);

subplot(1,2,1) 
plot(S, PutDelta)
title('Delta of put option with different Time to Maturity') 
xlabel('Stock Price') 
ylabel('Put Delta') 
grid on
line([100,100], [-1,1],'Color','red','linestyle','--')
% legend('v=0.3','v=0.5', 'v=0.7')
%  legend('T=0.25','T=0.5', 'T=1')
title('Delta of Put Option with Different Time to Maturity')
xlabel('Stock Price')
ylabel('Put Delta')
legend({'T=1M';'T=6M';'T=1Y'})
line([100,100], [-1,1],'Color','red','linestyle','--')

subplot(1,2,2) 
plot(S, CallDelta)
title('Delta of call option with different Time to Maturity') 
xlabel('Stock Price') 
ylabel('call Delta') 
grid on
line([100,100], [-1,1],'Color','red','linestyle','--')
% legend('v=0.3','v=0.5', 'v=0.7')
%  legend('T=0.25','T=0.5', 'T=1')
title('Delta of Call Option with Different Time to Maturity')
xlabel('Stock Price')
ylabel('Call Delta')
legend({'T=1M';'T=6M';'T=1Y'})
line([100,100], [-1,1],'Color','red','linestyle','--')