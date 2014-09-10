%% init
clear all;close all;clc

%%
x		= -4:.01:4;
alpha	= .05;
z		= norminv(alpha);


%%% reporting
figure(1)
clf; hold on;

axisy = [min(x) max(x) 0 1];

plot(x,normcdf(x))
plot([z z], [0 1])
plot([-4 4],[alpha alpha])
plot(x,normpdf(x))
plot(x,.01*cumsum(normpdf(x)),'r') % <- numerical approximation

axis(axisy)