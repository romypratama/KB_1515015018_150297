/*****************************************************************************
 Project:  
 FileName: TugasModul2
 Purpose: 
 Written by: Romy Pratama (1515015018)
 Comments: 
******************************************************************************/

predicates	
	nondeterm anak(string,string)
	nondeterm istri(string,string)
	nondeterm pria(string)
	nondeterm wanita(string)
	nondeterm ayah(string,string)
	nondeterm ibu(string,string)
	nondeterm cucu(string,string)
	nondeterm kakek(string,string)
	nondeterm adik(string,string)
	nondeterm usia(string,integer)
	
clauses
	anak("Jhon","James").
  	anak("James","Peter").
	anak("Sue","Ann").
	istri("Mary","Peter").
	istri("Ann","James").
	pria("Jhon").
	pria("James").
	pria("Peter").
	wanita("Mary").
	wanita("Sue").
	wanita("Ann").
	usia("Jhon",10).
	usia("Sue",13).
 
	ayah(A,B):-anak(B,A).
	kakek(A,B):-ayah(A,C), ayah(C,B).
	ibu(A,B):-istri(B,C), anak(A,C).
	cucu(A,B):-anak(A,C), anak(C,B).
	cucu(A,B):-anak(A,C), istri(C,D), anak(D,B).
	adik(A,B):-usia(A,C), usia(B,D), C<D.
  
goal
	cucu(X,Y).