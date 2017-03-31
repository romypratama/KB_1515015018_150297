DOMAINS
orang = orang(nama,alamat) /*mendeklarasikan data objek orang berargumen nama dan alamat*/
nama = nama(pertama,kedua) /* argumen nama disini merupakan data objek jamak yang memiliki argumen pertama dan kedua*/
alamat = alamat(jalan,kota_kab,propinsi) /*argumen alamat disini merupakan data objek jamak yang memiliki argumen jalan, kota_kab dan propinsi*/
jalan = jalan(nama_jalan,nomor) /*argumen jalan disini merupakan data objek jamak yang memiliki argumen nama_jalan dan nomor*/
kota_kab,propinsi,nama_jalan = string /*disini argumen kota_kab, propinsi dan nama_jalan diberi tipe data string*/
pertama,kedua = symbol/*disini argumen pertama dan kedua diberi tipe data symbol*/
nomor = integer

GOAL
P1 = orang(nama(diena,fatihah),alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY")), /*goal pertama, disini akan menampilkan sesuai apa yang diminta oleh P1 dan akan melanjutkn ke proses selanjutnya yaitu P2*/
P1 = orang(nama(_,fatihah),Alamat), /*goal ini akan menampilkan alamat milik diena fathah dan nur fatihah karena keduanya memiliki nama kedua yang sama yaitu fatihah*/
P2 = orang(nama(nur,fatihah),Alamat),/*goal ini akan menampilkan alamat milik nur fatihah yang mana nilai alamatnya diambil dari goal P1 yang pertama*/
write("P1=",P1),nl,
write("P2=",P2),nl. /*goal write ini akan dieksekusi lebih dahulu*/
