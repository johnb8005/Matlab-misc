%% autocorrelation

%% initialization
clc;clear,close

%% generation of ARMA signal
N		= 30;
x		= zeros(N,1);
x(1:2)	= [1 3];%randn(5,1);

b = [.2 .2 .2 .2 .5];
a = 1;
y = filter(b,a,x);


acf = autocorr(y);

%% plot
%plot(x)
plot(acf,'.')