clear all
clc

% Consider a European call option trading at $10 with an exercise price 
%     of $95 and 3 months until expiration. Assume the underlying stock pays
%     no dividends, is trading at $100, and the risk-free rate is 7.5% per 
%     annum. Furthermore, assume we are interested in implied volatilities 
%     no greater than 0.5 (i.e., 50% per annum). Under these conditions, any
%     of the following commands
%  This example shows how to compute the implied volatility for a European call option trading at $10 with an exercise price of $95 and three months until expiration. Assume that the underlying stock pays no dividend and trades at $100. The risk-free rate is 7.5% per annum.
%  Furthermore, assume that you are interested in implied volatilities no greater than 0.5 (50% per annum). Under these conditions, the following statements all compute an implied volatility of 0.3130, or 31.30% per annum.
%  Volatility = blsimpv(100, 95, 0.075, 0.25, 10, 0.5, 0, [], {'call'})
%  Volatility_call= blsimpv(100, 95, 0.075, 0.25, 10, 0.5, 0, [], true)
% Volatility_call = blsimpv(stock Price, Strike price, interest rate, Time to maturity, option market price, limit, 0, [], {'CALL'})

Volatility_call = blsimpv(23.18, 19.5, 0.00755,10/365, 3.52, 5,1, [], {'CALL'})%4/12 0061元大宝沪深收盘价｜履约价格｜利率｜到期日/365｜call价格
%    
Volatility_put = blsimpv(23.18, 19.5, 0.00755,10/365, 0.01, 1,0, [], {'put'})%put at 4/12 IV
% 
[CallDelta_call,PutDelta_call] = blsdelta(23.18, 19.5, 0.00755, 10/365, Volatility_call)
[CallDelta_put,PutDelta_put] = blsdelta(23.18, 19.5, 0.00755, 10/365, Volatility_put)

[CallTheta_call,PutTheta_call] = blstheta(23.18, 19.5, 0.00755,10/365,Volatility_call)
[CallTheta_put,PutTheta_put] = blstheta(23.18, 19.5, 0.00755,10/365,Volatility_put)

Vega_call = blsvega(23.18, 19.5, 0.00755,10/365,Volatility_call)
Vega_put = blsvega(23.18, 19.5, 0.00755,10/365,Volatility_put)

Gamma_call = blsgamma(23.18, 19.5, 0.00755,10/365, Volatility_call)
Gamma_put = blsgamma(23.18, 19.5, 0.00755,10/365, Volatility_put)


[CallRho_call, PutRho_call] = blsrho(23.18, 19.5, 0.00755,10/365,Volatility_call)
[CallRho_put, PutRho_put] = blsrho(23.18, 19.5, 0.00755,10/365,Volatility_put)
