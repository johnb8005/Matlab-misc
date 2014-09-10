% collatz Conjecture
clear;clc
n = round(1000*rand(1,1));
disp(['Begin with n = ' num2str(n)])

N = 5000;		% max iteration
n_t= zeros(1,N);
n_t(1)=n;

i=2;

while i<N && n_t(i-1)~=1
	if mod(n_t(i-1),2)
		n_t(i)=3*n_t(i-1)+1;
	else
		n_t(i)=n_t(i-1)/2;
	end
	i=i+1;
end

disp(['Converge to : (' num2str(n_t(i-min(20,i)+1:i-1)) ') in ' num2str(i) ' iterations'])

