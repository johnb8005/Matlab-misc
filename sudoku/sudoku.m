%% sudoku solver

%% init
clc;clear

%% create the game in file "create"
sol		= create;

%% creates all possibilities
poss	= initPossibilities(sol);

%% check for solution
summy = sum(isnan(sol(:)))+1;

while sum(isnan(sol(:)))<summy
	
	disp(summy)
	summy	= sum(isnan(sol(:)));
	
	poss	= updatePossibilities(sol, poss);
	sol		= updateSolution(sol, poss);
	
end


%% get non found cells
getIndex	= @(x)([mod(x,9), floor(x/9)+1]);
unk			= find(1 == isnan(sol));
sunk		= length(unk);
unk			= getIndex(unk);

cunk		= cell(sunk,1);
punk		= nan(sunk,1);
for i=1:sunk
	cunk{i} = find(1==poss{unk(i,1), unk(i,2)});
	punk(i) = length(cunk{i});
end

%% smart way - ansatz
an = find(min(punk)==punk, 1);
bf = sol;

return
%% semi brute force
bf = sol;



nTry = prod(punk);

disp(['Brute force will begin and try ' num2str(nTry) 'combinations'])

for i=1:nTry
	idx = getIndividualIndexFromMainIndex(punk,i);
	
	for k =1:sunk
		bf(unk(k,1),unk(k,2)) = cunk{k}(idx(k));
	end
	
	if check(bf)==1
		disp('found')
		sol = bf;
		break
	end
end


sol


% %% loop through all the possibilities
% finished = 0;
% 
% 
% while ~finished
% 	i=1;
% 	find(1==poss{unk(i,1), unk(i,2)});
% 	unk(1,1)
% 	finished=1;
% end