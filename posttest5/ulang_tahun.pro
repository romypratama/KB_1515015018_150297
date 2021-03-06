DOMAINS
nama = orang(symbol,symbol) /* (Pertama , Kedua) */
hari_lahir = tanggal_lahir(integer,symbol,integer) /* (Hari, Bulan, Tahun) */
telepon = symbol /* Nomor telepon */
PREDICATES
nondeterm daftar_telepon(nama,symbol,hari_lahir)/* argumen nama dan hari_lahir merupakan data objek jamak yang sudah dijabarkan pada bagian domains */
yang_ulang_tahun_bulan_ini
konversi_bulan(symbol,integer)
cek_bulan_ulang_tahun(integer,hari_lahir)
cetak_orang(nama)
CLAUSES
/*fakta-fakta / persyaratan untuk mencari orang yang berulang tahun pada bulan ini*/
yang_ulang_tahun_bulan_ini:-
write("**** Daftar Orang Yang Ulang Tahun Bulan Ini ****"),nl,
write(" Nama Pertama\t\t Nama Kedua\n"),
write("******************************************************"),nl,
date(_, Bulan_ini, _), /* Ambil bulan pada sistem komputer */
daftar_telepon(Orang, _, Tanggal),
cek_bulan_ulang_tahun(Bulan_ini, Tanggal),
cetak_orang(Orang),
fail./*fail berfungsi untuk menghentikan backtracking jika tidak maka hasil akan error*/
yang_ulang_tahun_bulan_ini:-write("\n\n Tekan sembarang tombol..."),nl,
readchar(_)./*akan menghasilkan yes, jika tidak ada script ini maka hasilnya akan no*/
cetak_orang(orang(Pertama,Kedua)):-write(" ",Pertama,"\t\t\t ",Kedua),nl./*ini untuk mencetak orang*/
cek_bulan_ulang_tahun(Bul,tanggal_lahir(_,Bulan,_)):-konversi_bulan(Bulan,Bulan1),
Bul = Bulan1 ./* ini menentukan apakah orang yang telah tercetak berulangtahun pada bulan ini*/
daftar_telepon(orang(erwin,effendy),"767-8463",tanggal_lahir(3,jan,1955))./*ini memuat daftar_telpon orang-orang  dan tanggal lahirnya */
daftar_telepon(orang(pramudya,kurniawan),"438-8400",tanggal_lahir(5,feb,1985)).
daftar_telepon(orang(kusdiar,prihatin),"555-5653",tanggal_lahir(3,mar, 1935)).
daftar_telepon(orang(ui,yansen),"767-2223",tanggal_lahir(29,apr,1951)).
daftar_telepon(orang(roland,hutagalung),"555-1212",tanggal_lahir(12,may,1962)).
daftar_telepon(orang(andi,nuruddin),"438-8400",tanggal_lahir(17,jun,1980)).
daftar_telepon(orang(syarif,musadek),"767-8463",tanggal_lahir(20,jun,1986)).
daftar_telepon(orang(lidya,widyawati),"555-5653",tanggal_lahir(16,jul,1981)).
daftar_telepon(orang(yusida,andriani),"767-2223",tanggal_lahir(10,aug,1981)).
daftar_telepon(orang(slamet,riyadi),"438-8400",tanggal_lahir(25,sep,1981)).
daftar_telepon(orang(nur,harjanto),"438-8400",tanggal_lahir(20,oct,1952)).
daftar_telepon(orang(dian,marlini),"555-1212",tanggal_lahir(9,nov,1984)).
daftar_telepon(orang(teguh,heni),"767-2223",tanggal_lahir(15,nov,1987)).
daftar_telepon(orang(eka,ardiyanti),"438-8400",tanggal_lahir(31,dec,1981)).
konversi_bulan(jan, 1)./*konversi bulan kedalam angka*/
konversi_bulan(feb, 2).
konversi_bulan(mar, 3).
konversi_bulan(apr, 4).
konversi_bulan(may, 5).
konversi_bulan(jun, 6).
konversi_bulan(jul, 7).
konversi_bulan(aug, 8).
konversi_bulan(sep, 9).
konversi_bulan(oct, 10).
konversi_bulan(nov, 11).
konversi_bulan(dec, 12).
GOAL
yang_ulang_tahun_bulan_ini.
/*goal ini akan mencetak satu orang saja karena hanya terdapat satu orang saja yang berulang tahun hari ini (29 maret 2017)*/

/*Visual Prolog memanggil goal yang_ulang_tahun_bulan_ini., lalu dibaca subgoal pertama 
  dari predikat yang_ulang_tahun_bulan_ini yaitu date. Subgoal yang dibaca pertama adalah 
  date karena ketiga subgoal diatas date tidak membutuhkan proses pencarian, karena 
  perintahnya adalah mencetak.
  Date mengambil Bulan pada sistem komputer, dalam hal ini adalah Bulan Desember.
  Sehingga Desember diikatkan pada variabel Bulan_ini. Proses berhasil lalu lanjut subgoal 
  berikutnya.
  Subgoal berikutnya yaitu daftar_telepon(Orang, _, Tanggal) didalam sub goal ini terdiri dari 1
  data. Dilakukan pengecekkan unifikasi pada data yang telah ada.
  Data pertama pada daftar_telepon adalah daftar_telepon(orang(eka, ardiyanti), _,
  tanggal_lahir(31, dec, 1981)), maka orang(eka, ardiyanti) diikatkan ke variabel Orang, dan 
  tanggal_lahir diikatkan ke variabel Tanggal. Proses sukses dilaksanakan. Lalu lanjut ke 
  subgoal berikutnya.
  Terdapat predikat fail pada subgoal yang terakhir untuk memaksa lacak balik meski pun telah
  didapat solusi. 
  Karena tidak ditemukan solusi lain, maka hasil yang didapat hanya satu yang berulang tahun 
  bulan ini yaitu eka ardiyanti.*/	
