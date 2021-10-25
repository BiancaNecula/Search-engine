function B = PR_Inv(A)
  % factorizam matricea A si rezolvam N sisteme superior triunghiulare cu 
  % ajutorul functiei SST. 
  I = eye(length(A));
	[Q,R] = Gram_Schmidt(A);
 % b = Q' * I; 
  for i = 1 : (length(A))
  [x] = SST(R, Q' * I(:, i));
  B(:, i) = x;
  endfor
endfunction  