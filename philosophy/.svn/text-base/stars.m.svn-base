%% draws stars


%% init
close all;clc;clear
% 5 edges
n		= 7;
edges	= 2*(0:n)/n;
edges2	= 4*(0:n)/n;

a=figure;

for k=0:100
	clf; hold on
h(1) = plot(exp(j*2*pi*[0:100]/100));
h(2) = plot(exp(j*2*pi*edges+j*k*pi/2/100),'-');
h(3) = plot(exp(j*2*pi*edges2+j*k*pi/2/100),'r-');
axis square
axis off
set(a,'color',rgb('white'))
set(h(1), 'color',rgb('lightgrey'))
M(k+1) = getframe;
end

%%
movie(M,1,3)
