Numerical Methods Course \
HOMEWORK 2 - Search engine

April, 2020

Bianca Necula \
Faculty of Automatic Control and Computer Science \
315CA 

# Info
```bash
git clone https://github.com/BiancaNecula/Search-engine.git
```
# About the project
See more info in "Tema_2_MN.pdf" file.

# About the code:

To solve this homework I used all the functions given in the skeleton:

* Iterative:  
The function calculates R using the Iterative algorithm. The data is read from the file and the adjacent matrix is ​​created. We use: the vector L to remember the number of links on each current page, the inverse of the matrix K that we use in the calculation of the matrix M and an auxiliary vector R. M and R are calculated according to the algorithm-specific formulas. Iterating pan the difference between R and R auxiliary will be less than the eps error. The algorithm stops at the penultimate iteration.

* Algebraic:  
The function calculates R using the Iterative algorithm. The data is read from the file and the adjacent matrix is ​​created. We use: the vector L to remember the number of links on each current page, the inverse of the matrix K that we use in the calculation of the matrix M and an auxiliary vector R. M and R are calculated according to the algorithm-specific formulas. The inverse of the matrix is ​​calculated using the PR_Inv function.

* PR_Inv:  
The function calculates the inverse of a matrix using Gram_Schmidt factorization and then solves an upper triangular system N times using the SST function.

* Gram_Schmidt and SST:  
The functions are written from different online sources and adapted to the requirement. The first does the QR factorization and the second solves a superior triangular system.

* Belonging (Aparteneta):
The function receives 3 parameters and depending on the framing of the first parameters between the 2 gives a different result as follows:  
-if x is in the range [0, val1), y takes the value 0  
-if x is in the range [val1, val2], y takes the value ax + b  
-if x is in the range (val2, 1], y takes the value 1    
where a and b are values ​​following the solution of the continuity:  
a = 1 / (val2-val1);  
b = val1 / (val1 - val2);  

* Pagerank:
The function is used to write the data found so far in the output file. We write: the number of pages, the result of the Iterative function, the result of the Algebraic function, and, after the descending sorting of the vector resulting from Algebraic using the built-in sort function, the Membership function is applied to each element of the sorted PR_a vector. The new index, the index of the item before sorting and the result of the Membership function are displayed. The output file is the result of concatenating the name of the input file with .out and opening it.
	 
 
