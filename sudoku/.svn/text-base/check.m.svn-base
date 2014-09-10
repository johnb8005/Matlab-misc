function [t, v] = check(sol)
	v(1) = sum(sol(:)) == 9*sum(1:9);
	
	for i = 1:9
		v(i+1) =  nansum(sol(:,i)) == sum(1:9);
	end
	
	for i = 1:9
		v(i+10) =  nansum(sol(i,:)) == sum(1:9);
	end
	
	t = sum(v)/length(v);
	
end