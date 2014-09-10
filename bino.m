clc

N=100%55*1;
x=0:N;
figure(1)

p=.5;
q=.6;

subplot(2,2,1)
b=getQuantile2(@binocdf,x,p,q)

%b=zeros(1,N);
%b2=b;




subplot(2,2,[3 4])
stairs(x, b/2)
hold on
%plot(x, b2,'r.')