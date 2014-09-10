function sol = create
	%% declare matrix 9x9
	sol		= NaN(9,9);
	
% 	sol(1,3) = 4;
% 	sol(1,4) = 3;
% 	sol(1,6) = 2;
% 	sol(1,7) = 1;
% 	
% 	sol(2,2) = 6;
% 	sol(2,8) = 2;
% 	
% 	sol(3,1) = 9;
% 	sol(3,9) = 7;
% 	
% 	sol(4,3) = 1;
% 	sol(4,5) = 3;
% 	sol(4,7) = 2;
% 	
% 	sol(5,1) = 2;
% 	sol(5,4) = 9;
% 	sol(5,6) = 6;
% 	sol(5,9) = 1;
% 	
% 	sol(6,3) = 9;
% 	sol(6,5) = 5;
% 	sol(6,7) = 4;
% 	
% 	sol(7,1) = 7;
% 	sol(7,9) = 3;
% 	
% 	sol(8,2) = 1;
% 	sol(8,8) = 4;
% 	
% 	sol(9,3) = 8;
% 	sol(9,4) = 5;
% 	sol(9,6) = 3;
% 	sol(9,7) = 9;

	sol(1,1)	= 6;
	sol(1,2)	= 2;
	sol(1,5)	= 8;
	sol(1,7)	= 4;
	sol(1,9)	= 1;

	sol(2,3)	= 3;
	sol(2,4)	= 6;

	sol(3,7)	= 3;
	sol(3,9)	= 8;

	sol(4,2)	= 6;
	sol(4,4)	= 7;
	sol(4,6)	= 2;
	sol(4,7)	= 1;

	sol(5,2)	= 4;
	sol(5,8)	= 7;

	sol(6,3)	= 7;
	sol(6,4)	= 9;
	sol(6,6)	= 3;
	sol(6,8)	= 5;

	sol(7,1)	= 7;
	sol(7,3)	= 6;
	sol(8,6)	= 8;
	sol(8,7)	= 6;

	sol(9,1)	= 9;
	sol(9,3)	= 4;
	sol(9,5)	= 7;
	sol(9,8)	= 8;
	sol(9,9)	= 2;
	
% 	sol = [
% 		NaN NaN NaN		NaN NaN NaN		NaN NaN NaN;
% 		NaN NaN NaN		NaN NaN NaN		NaN NaN NaN;
% 		NaN NaN NaN		NaN NaN NaN		NaN NaN NaN;
% 		
% 		NaN NaN NaN		NaN NaN NaN		NaN NaN NaN;
% 		NaN NaN NaN		NaN NaN NaN		NaN NaN NaN;
% 		NaN NaN NaN		NaN NaN NaN		NaN NaN NaN;
% 		
% 		NaN NaN NaN		NaN NaN NaN		NaN NaN NaN;
% 		NaN NaN NaN		NaN NaN NaN		NaN NaN NaN;
% 		NaN NaN NaN		NaN NaN NaN		NaN NaN NaN;
% 	];
% 
% 	sol = [
% 		NaN 7 9		NaN NaN 4		NaN NaN 1;
% 		3 NaN 2		NaN 1 NaN		9 NaN NaN;
% 		NaN NaN NaN		7 6 NaN		NaN NaN NaN;
% 		
% 		NaN 3 NaN		2 NaN NaN		NaN NaN 9;
% 		8 NaN 4		NaN NaN NaN		3 NaN 5;
% 		NaN NaN NaN		NaN NaN 3		NaN 1 NaN;
% 		
% 		NaN NaN NaN		NaN 7 5		NaN NaN NaN;
% 		NaN NaN 8	NaN 3 NaN		2 NaN 7;
% 		6 NaN NaN		1 NaN NaN		8 9 NaN;
% 	];
	
end