function R = Iterative(nume, d, eps)
	% Functia care calculeaza matricea R folosind algoritmul iterativ.
	% Intrari:
	%	-> nume: numele fisierului din care se citeste;
	%	-> d: coeficentul d, adica probabilitatea ca un anumit navigator sa continue navigarea (0.85 in cele mai multe cazuri)
	%	-> eps: eruarea care apare in algoritm.
	% Iesiri:
	%	-> R: vectorul de PageRank-uri acordat pentru fiecare pagina. 
  %se deschide fisierul de intrare si se citesc datele pt a forma matricea de adiacenta
  in = fopen(nume, 'r');
  nr_nodes = fscanf(in, "%f",1);
  A = zeros(nr_nodes);
  L = zeros(1, nr_nodes);
  Ki = zeros(nr_nodes);
  for i=1:nr_nodes
    indx = fscanf(in, "%f", 1);
    nr_neighbours = fscanf(in, "%f", 1);
    for j = 1:nr_neighbours
      node = fscanf(in, "%f", 1);
      A(indx, node) = 1;
    endfor
  endfor
  % pe diagonala principala punem 0
  for i=1:nr_nodes
      A(i,i) = 0;
  endfor
  % vectorul L memoreaza nr de pagini catre care are linkuri pagina curenta
  % matricea Ki reprezinta inversa matricii K si contine pe diagonala inversul
  % nr de linkuri
  for i=1:nr_nodes
    L(i) = sum(A(i, :));
    Ki(i,i) = 1/L(i);
  endfor
  % matricea M este transpusa produsului dintre Ki si matricea adiacenta
  M = (Ki * A)';
  % R este initializat ca fiind de dimensiune 1xN si contine 1/N 
  R = (1/nr_nodes).*ones(nr_nodes,1);
  % R2 este calculat cu ajutorul formulei algoritmului Iterative
  R2 = d .* M * R + (1-d) * (1/nr_nodes) * ones(nr_nodes,1);
  % se itereaza pana norma diferentei celor 2 este mai mica decat eroarea
  while(norm(R2-R) > eps)
    R = R2;
    R2 = d .* M * R + (1-d) * (1/nr_nodes) * ones(nr_nodes,1);
  endwhile
  % se opreste algoritmul la penultima iteratie
  fclose(in);
  
endfunction