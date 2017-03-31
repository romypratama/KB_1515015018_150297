DOMAINS
benda = buku(judul, pengarang) ;/*mendeklarasikan data objek jamak dengan functor yang berargumen judul dan pengarang*/
kuda(nama) ; kapal ;
bukubank(saldo)
judul, pengarang, nama = symbol /*argumen judul, pengarang dan nama menggunakan tipe data symbol*/
saldo = real /*domain saldo menggunakan tipe data real*/

PREDICATES
nondeterm milik(nama,benda)/*deklarasi predikat menggunankan nondeterm*/

CLAUSES
milik(erwin, buku("Markesot Bertutur", "Emha Ainun Najib"))./*pada bagian clauses ini menjelaskan benda-benda yang dimiliki Erwin*/
milik(erwin, kuda(buraq)).
milik(erwin, kapal). 	
milik(erwin, bukubank(1000)).


GOAL
milik(erwin, Benda)./*goal akan mencari benda-benda apa saja yang dimiliki Erwin dan akan menampilkan 4 solusi*/
