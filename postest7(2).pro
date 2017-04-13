/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* %di domain ini kita mendeklarasikan list yang berisi sekumpulan data bertipe data integer

predicates
  length_of(list,integer) - procedure (i,o) %di sini kita isi dari length adalah list dan data bertipe integer dengan prosedur input,output 

clauses
  length_of([], 0). %di clausa ini akan melakukan pencarian argumen yang sama. yakni [] (kurung kotak yang kosong sebagai tail) dan perhitungan panjang akan dimulai dari 0
  length_of([_|T],L):-
	length_of(T,TailLength), %di sesi ini akan memanggil kembali klausa kedua dengan list yang elemennya berkurang karena list berikutnya hanya akan memakai tail dari list yang sebelumnya
	L = TailLength + 1. %disini akan menambahkan perhitungan panjang list setiap kali klausa ini berjalan

goal
  length_of([1,2,3],L).%goal-nya diberikan list 1,2,3 dan mencari nilai dari L yang merupakan nilai panjang dari list
