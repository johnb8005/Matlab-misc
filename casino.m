% essai casino
clc;clear

N	= 10000;
N2	= 10000;

perf = zeros(1, N2);


for k = 1:N2
	y = floor(rand(1,N)*37);	    % generate roulette distribution


	x1 = (y~=0).*(mod(y,2)*2-1);	    % get odd and even signal
	x2 = -(y>0 & y < 19) + (y>18);	% get pass / manque distribution
									% get black and white
	x3 = (y>0) + (y>12) + (y>24);	% get subsequent thirds

	money = zeros(1,N);		% money over time
	startup_delay = 5;

	money(1:startup_delay) = 100;		% initial amount of money


	for i = 2:N

		money(i) = money(i-1);

		% pure random strategy
		money(i) = (2*(rand>1)-1)*x1(i) + money(i);

		%if sum(x1(i-4:i-1)) == 2
		%	money(i) = money(i) - x1(i);
		%end

		%if sum(x1(i-4:i-1)) == -2
		%	money(i) = money(i) + x1(i);
		%end
	end
	
	perf(k) = money(end);
end


hist(perf)

%subplot(211)
%plot(money)

%subplot(212)
%plot(y, '.')
