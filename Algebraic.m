  function R = Algebraic(nume, d)
	% Functia care calculeaza vectorul PageRank folosind varianta algebrica de calcul.
	% Intrari: 
	%	-> nume: numele fisierului in care se scrie;
	%	-> d: probabilitatea ca un anumit utilizator sa continue navigarea la o pagina urmatoare.
	% Iesiri:
	%	-> R: vectorul de PageRank-uri acordat pentru fiecare pagina.
    %se deschide fisierul de intrare si se citesc datele pt a forma matricea de adiacenta
  in = fopen(nume, 'r');
  nr_nodes = fscanf(in, "%f", 1);
  A = zeros(nr_nodes);
  L = zeros(1, nr_nodes);
  Ki = zeros(nr_nodes);
  I = eye(nr_nodes);
  for i = 1:nr_nodes
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
    L(i) = sum(A(i,:));
    Ki(i,i) = 1/L(i);
  endfor
  % matricea M este transpusa produsului dintre Ki si matricea adiacenta
  M = (Ki * A)';
  % Calculam inversa lui I - M * d, I fiind matricea unitate
  T = I - M * d;
 % P = inverse(T);
  P = PR_Inv(T);
  % formula aplicata pt algoritmul Algebraic
  R = P * (1 - d) * (1/nr_nodes) * ones(nr_nodes,1);
  fclose(in);
endfunction	