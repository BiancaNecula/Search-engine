function [R1 R2] = PageRank(nume, d, eps)
  % deschidem fisierul de intrare
	in = fopen(nume, "r");
  % citim datele din fisier pentru a ajunge la valorile val1 si val2
  nr_nodes = fscanf(in, "%d", 1);
  for i = 1:nr_nodes
    indx = fscanf(in, "%f", 1);
    nr_neighbours = fscanf(in, "%f", 1);
    for j = 1:nr_neighbours
      node = fscanf(in, "%f", 1);
    endfor
  endfor 
  
  val1 = fscanf(in, "%f", 1);
  val2 = fscanf(in, "%f", 1);
  fclose(in);
  % apelam cele 2 functii Iterative si Algebraic
  PR_i = Iterative(nume, d, eps);
  PR_a = Algebraic(nume, d);
  % concatenam fisierul de intrare cu .out pt a creea fisierul de iesire
  nume_out = strcat(nume, ".out");
  out = fopen(nume_out, "w");
  % afisam in fisierul de iesire cei 2 vectori rezultati in urma functiilor
  fprintf(out, '%i\n', nr_nodes);
  fprintf(out, '\n');
  fprintf(out, '%.6f\n', PR_i);
  fprintf(out, '\n');
  fprintf(out, '%.6d\n', PR_a);
  fprintf(out, '\n');
  % sortam descrescator vectorul de la Algebraic
  % pastram un vector pentru a tine minte ordinea indecsilor dupa sortare
  [B, indx] = sort(PR_a, 'descend');
  
  for i = 1:nr_nodes
    % aplicam pentru fiecare valoare din vectorul sortat functia Apartenenta
    y = Apartenenta(B(i), val1, val2)
    % afisam in fisierul de iesire indexul curent, indexul anterior sortarii
    % si output-ul functiei 
    fprintf(out, '%d %d %.6f\n', i, indx(i), y);
  endfor
  % inchidem fisierul de iesire
  fclose(out);
  R1 = PR_i;
  R2 = PR_a;  
  
endfunction