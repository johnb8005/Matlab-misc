function poss =  initPossibilities(sol)
	poss	= cell(9,9);

	for i=1:9
		for k=1:9
			
			if ~isnan(sol(i,k))
				temp			= zeros(9,1);
				temp(sol(i,k))	= 1;
			else
				temp			= ones(9,1);
			end
			poss{i,k} = temp;
		end
	end
end