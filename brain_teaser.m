%% brain teaser

%% init
clear;clc

%% settings
numberToBeGuessed	= 24;		
numbers				= {'1','3','4','6'};
numbers				= [1,3,4,6];
operations			= {'+','-','*','/'};%,'^'
operations			= cell2mat(operations);


% is there a way to create an algo that generates "separator_{l,r}" ?
% for N > 4 , the need to have embedded braces
separator_l			= {	'(','','','';...
						'(','','','';...
						'','(','','';...
						'(','','','';...
						'','(','','';...
						'','','(','';...
						'(','','(','';
					};

separator_r			= {	'','','',')';...
						'','',')','';...
						'','','',')';...
						'',')','','';...
						'','',')','';...
						'','','',')';...
						'',')','',')';
					};

				
%% compute permutations
op_m = npermutek(operations,3);
op_n = perms(numbers);


%% compute sizes
sop_n = size(op_n);
sop_m = size(op_m);
sop_s = size(separator_l);


%% main algo
for k=1:sop_n(1)
	for l=1:sop_m(1)
		for o=1:sop_s(1)
			str =[separator_l{o,1} num2str(op_n(k,1)) ' ' separator_r{o,1} ' ' op_m(l,1) ' ' separator_l{o,2} ' ' num2str(op_n(k,2)) ' ' separator_r{o,2} ' ' op_m(l,2) ' ' separator_l{o,3} ' ' num2str(op_n(k,3)) ' ' separator_r{o,3} ' ' op_m(l,3) ' ' separator_l{o,4} ' ' num2str(op_n(k,4)) ' ' separator_r{o,4} ';'];
			#disp(str)
			eval(['a= ' str]);
			if a==numberToBeGuessed
				disp('Found! :')
				disp([num2str(numberToBeGuessed) ' = ' str])
			end
		end
	end
end

disp(['Number of trials: ' num2str(sop_n(1)*sop_m(1)*sop_s(1))])

