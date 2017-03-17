PREDICATES
nondeterm suka(symbol,symbol) %predikat suka yng di dalamnya ada 2 karakter yang dimana 1 karakter ada yang input dan 1 karakter yang output

CLAUSES
suka(asep,membaca). 
suka(asari,computers).
suka(nunung,bulutangkis).
suka(vida,bulutangkis).
suka(astana,renang).
suka(astana,membaca).

GOAL
suka(Orang, membaca),
suka(Orang, renang).

%progam ini akan menyeleksi satu persatu sesuai dengan fakta yang diminta yang dimana goalnya disini suka(Orang, membaca),suka(Orang,renang) yang akan muncul di program yaitu orang=astana.
%karena berdasarkan fakta dan aturan yang dibuat astan suka renang dan suka membaca.
%kenapa cuman orang aja yang muncul karena disitu huruf depannya huruf besar yang dimana disetiap di depan kalimat diawalin huruf besar itu sisebut variabel.