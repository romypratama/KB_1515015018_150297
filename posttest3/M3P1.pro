DOMAINS
kali,jumlah = integer %disini karakter kali dan jumlah sudah dideklarasikan sebagai integer

PREDICATES
tambahkan(jumlah,jumlah,jumlah)%disni predikat tambahkan yang di dalamnya ada 3 argumen yaitu jumlah
kalikan(kali,kali,kali)%disni predikat kalikan yang di dalamnya ada 3 argumen yaitu kali

CLAUSES
tambahkan(X,Y,Jumlah):-Jumlah=X+Y.% disini untuk membacanya X di tambahkan y hasil jumlah jika jumlah sama dengan X ditambah Y
kalikan(X,Y,Kali):-Kali=X*Y.%disini untuk membacanya X kalikan Y hasil kali jika kali sama dengan X dikali Y

GOAL
tambahkan(32,54,Jumlah). %disini akan meneksekusi tambahkan  yang di mana ada imputan 2 variabel, variabel X itu 32, variabel Y itu 54, jumlah akan menghitung sesuai dengan yang ada di clauses jumlah = 32 +54 maka hasilnya adalah 86