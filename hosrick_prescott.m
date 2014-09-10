%% hodrick prescott filter

%%
clear;clc;close

%%
N = 1000;
q = 2000;
z = exp(j*[1:N]/N*2*pi);
H = z.^(-2).*q./(q+(1-z).^2.*(1-conj(z)).^2);%ones(N,1);
h = ifft(H);

%h = [h(N/2+1:end) h(1:N/2)];

%% reporting
figure(1)
subplot(211)
plot(H)
subplot(212)
plot(real(h),'.')