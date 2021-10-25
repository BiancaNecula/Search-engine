Necula Bianca 315CA
Tema 2 - Metode Numerice

Pentru a rezolva aceasta tema am folosit toate functiile date in schelet:

Iterative: 
	Functia calculeaza R folosind algoritmul Iterative. Se citesc din fisier datele si se creeaza matricea de adiacenta. Se folosesc: vectorul L pentru a tine minte numarul de linkuri de pe fiecare pagina curenta, inversa matricei K pe care o folosim in calcularea matricei M si un vector R auxiliar. M si R sunt calculate dupa formulele specifice algoritmului. Se itereaza pan adiferenta dintre R si R auxiliar va fi mai mica decat eroarea eps. Se opreste algoritmul la penultima iteratie.

Algebraic:
	Functia calculeaza R folosind algoritmul Iterative. Se citesc din fisier datele si se creeaza matricea de adiacenta. Se folosesc: vectorul L pentru a tine minte numarul de linkuri de pe fiecare pagina curenta, inversa matricei K pe care o folosim in calcularea matricei M si un vector R auxiliar. M si R sunt calculate dupa formulele specifice algoritmului. Se calculeaza inversa matricei cu ajutorul functiei PR_Inv.

PR_Inv :
	Functia calculeaza inversa unei matrici folosind factorizarea Gram_Schmidt si apoi se rezolva un sistem superior triunghiular de N ori cu ajutorul functiei SST.

Gram_Schmidt si SST:
	Functiile sunt scrise din diferite surse online si adaptate cerintei. Prima face factorizarea QR si a doua rezolva un sistem superior triunghiular.

Apartenenta:
	Functia primeste 3 parametrii si in functie de incadrarea primului parametrii intre cei 2 da un rezultat diferit astfel:
	-daca x se afla in intervalul [0, val1), y ia valoarea 0
	-daca x se afla in intervalul [val1, val2], y ia valoarea ax + b
	-daca x se afla in intervalul (val2, 1], y ia valoarea 1
	unde a si b sunt valori aflate in urma rezolvarii continuitatii:
	a = 1 / (val2-val1);
  	b = val1 / (val1 - val2);

Pagerank:
	Functia se foloseste pentru a scrie datele aflate pana acum in fisierul de iesire. Se scriu: numarul de pagini, rezultatul functiei Iterative, rezultatul functiei Algebraic, si, dupa sortarea descrescatoare a vectorului rezultat din Algebraic cu ajutorul functiei built-in sort, se aplica functia Apartenenta pe fiecare element din vectorul PR_a sortat. Se afiseaza indexul nou, indexul elmentului de dinaintea sortarii si rezultatul functiei Apartenenta. Fisierul de iesire este rezultat in urma concatenarii numelui fisierului de intrare cu .out si deschiderea lui. 
	 
 