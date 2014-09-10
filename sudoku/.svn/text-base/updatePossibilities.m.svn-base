function poss = updatePossibilities(sol, poss)
	for i = 1:9
		for k=1:9
			if ~isnan(sol(i,k))
				for l=1:9
					if l~=k
						poss{i,l}(sol(i,k))	= 0;
					end

					if l~=i
						poss{l,k}(sol(i,k))	= 0;
					end
				end

				%% find nearest edge of square
				a = floor((i-1)/3)*3+1;
				b = floor((k-1)/3)*3+1;
				for l=a:a+2
					for j=b:b+2
						if l~=i && j~=k
							poss{l,j}(sol(i,k))	= 0;
						end
					end
				end
			end
		end
	end
end