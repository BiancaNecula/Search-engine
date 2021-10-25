function y = Apartenenta(x, val1, val2)
	% Functia care primeste ca parametrii x, val1, val2 si care calculeaza valoarea functiei membru in punctul x.
	% Stim ca 0 <= x <= 1 
  % din functia continua rezulta:
  a = 1 / (val2-val1);
  b = val1 / (val1 - val2);
  % avem 3 cazuri
  % daca x se afla in intervalul [0, val1), y ia valoarea 0
  if (x >= 0 && x < val1)
    y = 0;
  endif  
  % daca x se afla in intervalul [val1, val2], y ia valoarea ax + b
  if (x >= val1 && x <= val2)
    y = a*x + b;
  endif  
  % daca x se afla in intervalul (val2, 1], y ia valoarea 1
  if (x > val2 && x <= 1)
    y = 1;
  endif
endfunction	