function sol = updateSolution(sol, poss)
	for i=1:9
		for k=1:9
			if sum(poss{i,k}) == 1
				sol(i,k) = find(1 == poss{i,k});
			end
		end
	end
end