-- veritaban�m� olu�turuyorum

create database db_lojistik;


-- tablolar�m� olu�turuyorum



create table tbl_cari
(
cari_id int primary key identity,
firma_ad nvarchar(30),
vergi_dairesi nvarchar(50),
vergi_no smallint,
yetkili_ad� nvarchar(30),
tel_no char(11),
adres nvarchar(50)
)

create table tbl_arac
(
arac_id int primary key identity,
plaka char(8),
sofor_ad nvarchar(20),
tel_no char(11),
firma_ad nvarchar(30),
)


create table tbl_personel
(
personel_id int primary key identity,
tc_no char(11),
isegir_tarih date,
ad nvarchar(20),
soyad nvarchar(20),
unvan nvarchar(30),
tel_no char(11),
maas smallmoney
)

create table tbl_malzeme
(
malzeme_id int primary key identity,
malzeme_ad nvarchar(30),
cins nvarchar(20),
birim nvarchar(20),
tas�ma_ucret smallmoney
)

create table tbl_nklyearc
(
nakl�ye_id int primary key identity,
tarih date,
tsm_irsliye_no char(20),
sevk_irsliye_no char(20),
plaka char(8),
sofor_ad nvarchar(20),
tel_no char(11),
arac_�d int
)

create table tbl_gndrc_alc
(
gonderici_id int primary key identity,
gonderici_ad nvarchar(20),
al�c�_ad nvarchar(20),
malzeme_ad nvarchar(30),
cins nvarchar(20),
birim nvarchar(20),
miktar tinyint,
fiyat smallmoney,
ac�klama nvarchar(100),
malzeme_id int
)

create table tbl_nklyegdr
(
gider_id int primary key identity,
sefer_id int,
plaka char(8),
tarih date,
fiyat smallmoney,
ac�klama nvarchar(100),
personel_id int 
)


create table tbl_nkthsl
(
tahsilat_id int primary key identity,
tarih date,
cari_id int,
ad nvarchar(20),
ac�klama nvarchar(100),
tahsil_edilen_fyt smallmoney
)


-- Veri Taban�ma kay�tlar ekliyorum

-- cari tabloma ekledi�im kay�tlar
INSERT INTO tbl_cari(firma_ad, vergi_dairesi, vergi_no, yetkili_ad�, tel_no, adres)
VALUES('Mert Ticaret A.�.','Ankara Vergi Dairesi',11111,'mert',11111111111,'Etimesgut/Ankara')

INSERT INTO tbl_cari(firma_ad, vergi_dairesi, vergi_no, yetkili_ad�, tel_no, adres)
VALUES('Ahmet Ticaret A.�.','K�r�kkale Vergi Dairesi',22222,'ahmet',22222222222,'Merkez/K�r�kkale')

INSERT INTO tbl_cari(firma_ad, vergi_dairesi, vergi_no, yetkili_ad�, tel_no, adres)
VALUES('Yusuf Ticaret A.�.','�stanbul Vergi Dairesi',3333,'yusuf',33333333333,'Be�ikta�/�stanbul')

INSERT INTO tbl_cari(firma_ad, vergi_dairesi, vergi_no, yetkili_ad�, tel_no, adres)
VALUES('Selin Ticaret A.�.','Mersin Vergi Dairesi',444,'Selin',44444444444,'Silifke/Mersin')

INSERT INTO tbl_cari(firma_ad, vergi_dairesi, vergi_no, yetkili_ad�, tel_no, adres)
VALUES ('Elif Ticaret A.�.','Bursa Vergi Dairesi',555,'Elif',55555555555,'Mudanya/Bursa')


select * from tbl_cari


-- Ara�lar tabloma kay�t ekliyorum

INSERT INTO tbl_arac (plaka, sofor_ad, tel_no, firma_ad)
VALUES('06 AB 79','Ahmet',11111111111,'Mert Ticaret A.�.')

INSERT INTO tbl_arac (plaka, sofor_ad, tel_no, firma_ad)
VALUES('40 BB 80','Burak',88888888888,'Selin Ticaret A.�.')

INSERT INTO tbl_arac (plaka, sofor_ad, tel_no, firma_ad)
VALUES('38 DD 90','Sena',77777777777,'Elif Ticaret A.�.')

INSERT INTO tbl_arac (plaka, sofor_ad, tel_no, firma_ad)
VALUES('35 ED 50','Buket',33333333333,'Ahmet Ticaret A.�.')

INSERT INTO tbl_arac (plaka, sofor_ad, tel_no, firma_ad)
VALUES('34 EF 40','Hatice',55555555555,'Yusuf Ticaret A.�.')

INSERT INTO tbl_arac (plaka, sofor_ad, tel_no, firma_ad)
VALUES('38 DD 90','Sena',77777777777,'Elif Ticaret A.�.')

INSERT INTO tbl_arac (plaka, sofor_ad, tel_no, firma_ad)
VALUES('35 ED 50','Buket',33333333333,'Ahmet Ticaret A.�.')


select * from tbl_arac 


-- Personel Tabloma kay�t ekliyorum

INSERT INTO tbl_personel (tc_no, isegir_tarih, ad, soyad, unvan, tel_no, maas)
VALUES (11111111111,'2021-06-21','mert','tutum','Veri Taban� Uzman�',12345678912,9000)

INSERT INTO tbl_personel (tc_no, isegir_tarih, ad, soyad, unvan, tel_no, maas)
VALUES(22222222222,'2022-09-14','burak','u�an','Muhasebe Uzman�',14141414141,8000)

INSERT INTO tbl_personel (tc_no, isegir_tarih, ad, soyad, unvan, tel_no, maas)
VALUES(33333333333,'2020-03-12','selin','selin','�nsan Kaynaklar� Uzman�',12121212121,7500)

INSERT INTO tbl_personel(tc_no, isegir_tarih, ad, soyad, unvan, tel_no, maas)
VALUES(44444444444,'2021-07-07','bora','bora','Bilgi ��lem Uzman�',78787878787,8600)

INSERT INTO tbl_personel (tc_no, isegir_tarih, ad, soyad, unvan, tel_no, maas)
VALUES(55555555555,'2020-08-11','volkan','volkan','Depo Eleman�',56565656565,7400)


select * from tbl_personel 


-- Malzeme Tabloma kay�t ekliyorum


INSERT INTO tbl_malzeme (malzeme_ad, cins, birim, tas�ma_ucret)
VALUES('ABC Bisk�vi','Bisk�vi','20',1250)

INSERT INTO tbl_malzeme (malzeme_ad, cins, birim, tas�ma_ucret)
VALUES('ABC Kraker','Kraker','30',4170)

INSERT INTO tbl_malzeme (malzeme_ad, cins, birim, tas�ma_ucret)
VALUES('ABC ��ecek','��ecek','35',5870)

INSERT INTO tbl_malzeme (malzeme_ad, cins, birim, tas�ma_ucret)
VALUES('AAA Cips','Cips','40',7890)

INSERT INTO tbl_malzeme (malzeme_ad, cins, birim, tas�ma_ucret)
VALUES('AAA �ikolata','�ikolata','39',6540)


select * from tbl_malzeme 


-- nakliye ara� tabloma kay�t ekliyorum

INSERT INTO tbl_nklyearc (tarih, tsm_irsliye_no, sevk_irsliye_no, plaka, sofor_ad, tel_no, arac_�d)
VALUES(GETDATE(),45236,78956,'40 BB 80','Burak',88888888888,2)

INSERT INTO tbl_nklyearc (tarih, tsm_irsliye_no, sevk_irsliye_no, plaka, sofor_ad, tel_no, arac_�d)
VALUES(GETDATE(),74582,23956,'06 AB 79','Ahmet',11111111111,1)

INSERT INTO tbl_nklyearc (tarih, tsm_irsliye_no, sevk_irsliye_no, plaka, sofor_ad, tel_no, arac_�d)
VALUES(GETDATE(),45625,74512,'38 DD 90','Sena',77777777777,3)

INSERT INTO tbl_nklyearc (tarih, tsm_irsliye_no, sevk_irsliye_no, plaka, sofor_ad, tel_no, arac_�d)
VALUES(GETDATE(),25689,42896,'35 ED 50','Buket',33333333333,4)

INSERT INTO tbl_nklyearc (tarih, tsm_irsliye_no, sevk_irsliye_no, plaka, sofor_ad, tel_no, arac_�d)
VALUES(GETDATE(),21548,74569,'34 EF 40','Hatice',55555555555,5)


select * from db_lojistik.dbo.tbl_nklyearc 


-- g�nderici al�c� bilgileri tabloma ekledi�im kay�tlar

INSERT INTO tbl_gndrc_alc (gonderici_ad, al�c�_ad, malzeme_ad, cins, birim, miktar, fiyat, ac�klama, malzeme_id)
VALUES('Mert Ticaret A.�.','burak','ABC Bisk�vi','Bisk�vi','20',40,400,'Mert ticaret taraf�ndan burak bey e g�nderilen �r�n',1)

INSERT INTO tbl_gndrc_alc (gonderici_ad, al�c�_ad, malzeme_ad, cins, birim, miktar, fiyat, ac�klama, malzeme_id)
VALUES('Selin Ticaret A.�.','volkan','ABC Kraker','Kraker','30',50,600,'Selin ticaret taraf�ndan volkan bey e g�nderilen �r�n',2)

INSERT INTO tbl_gndrc_alc (gonderici_ad, al�c�_ad, malzeme_ad, cins, birim, miktar, fiyat, ac�klama, malzeme_id)
VALUES('Ahmet Ticaret A.�.','mert','ABC ��ecek','��ecek','35',45,800,'Ahmet ticaret taraf�ndan mert bey e g�nderilen �r�n',3)

INSERT INTO tbl_gndrc_alc (gonderici_ad, al�c�_ad, malzeme_ad, cins, birim, miktar, fiyat, ac�klama, malzeme_id)
VALUES('Yusuf Ticaret A.�.','elif','AAA Cips','Cips','40',95,890,'Yusuf ticaret taraf�ndan elif han�ma g�nderilen �r�n',4)

INSERT INTO tbl_gndrc_alc (gonderici_ad, al�c�_ad, malzeme_ad, cins, birim, miktar, fiyat, ac�klama, malzeme_id)
VALUES('Elif Ticaret A.�.','sena','AAA �ikolata','�ikolata','39',65,444,'Elif ticaret taraf�ndan sena han�ma g�nderilen �r�n',5)

INSERT INTO tbl_gndrc_alc (gonderici_ad, al�c�_ad, malzeme_ad, cins, birim, miktar, fiyat, ac�klama, malzeme_id)
VALUES('Elif Ticaret A.�.','sena','AAA �ikolata','�ikolata','39',65,444,'Elif ticaret taraf�ndan sena han�ma g�nderilen �r�n',5)



select * from db_lojistik.dbo.tbl_gndrc_alc 


-- nakliye gideri tabloma kay�t ekliyorum

INSERT INTO tbl_nklyegdr (sefer_id, plaka, tarih, fiyat, ac�klama, personel_id)
VALUES(1,'40 BB 80',GETDATE (),5400,'x �r�n� i�in g�nderi gideri',1)

INSERT INTO tbl_nklyegdr (sefer_id, plaka, tarih, fiyat, ac�klama, personel_id)
VALUES(2,'06 AB 79',GETDATE(),9800,'X �r�n� i�in g�nderi gideri',2)

INSERT INTO tbl_nklyegdr (sefer_id, plaka, tarih, fiyat, ac�klama, personel_id)
VALUES(3,'38 DD 90',GETDATE(),1000,'X �r�n� i�in g�nderi gideri',3)

INSERT INTO tbl_nklyegdr (sefer_id, plaka, tarih, fiyat, ac�klama, personel_id)
VALUES(4,'35 ED 50',GETDATE(),7000,'X �r�n� i�in g�nderi gideri',4)

INSERT INTO tbl_nklyegdr (sefer_id, plaka, tarih, fiyat, ac�klama, personel_id)
VALUES(5,'34 EF 40',GETDATE(),6500,'X �r�n� i�in g�nderi gideri',5)

select * from db_lojistik .dbo.tbl_nklyegdr 


-- nakit tahsilat tablom i�in g�nderi gideri

INSERT INTO tbl_nkthsl (tarih, cari_id, ad, ac�klama, tahsil_edilen_fyt)
VALUES(GETDATE(),1,'mert','Mert Ticaret A.�. i�in tahsil edilen tutar',5800)

INSERT INTO tbl_nkthsl (tarih, cari_id, ad, ac�klama, tahsil_edilen_fyt)
VALUES(GETDATE (),2,'mert','Ahmet Ticaret A.�. i�in tahsil edilen tutar',8400)

INSERT INTO tbl_nkthsl (tarih, cari_id, ad, ac�klama, tahsil_edilen_fyt)
VALUES(GETDATE (),3,'mert','Yusuf Ticaret A.�. i�in tahsil edilen tutar',9500)

INSERT INTO tbl_nkthsl (tarih, cari_id, ad, ac�klama, tahsil_edilen_fyt)
VALUES(GETDATE (),4,'mert','Selin Ticaret A.�. i�in tahsil edilen tutar',6300)

INSERT INTO tbl_nkthsl (tarih, cari_id, ad, ac�klama, tahsil_edilen_fyt)
VALUES(GETDATE (),5,'mert','Elif Ticaret A.�. i�in tahsil edilen tutar',5500)


select* from db_lojistik .dbo.tbl_nkthsl 


-- PROCEDURE OLU�TURUYORUM

-- tahsilatlar�m� h�zl� �ekilde g�ncellemek i�in bir procedure tan�mlad�m

CREATE PROCEDURE pr_thslgncl
(
@tahsilat_id INT,
@tarih date,
@cari_id INT,
@ad NVARCHAR(20),
@ac�klama NVARCHAR(50),
@tahsil_edilen_fyt smallmoney
)
AS 
BEGIN
UPDATE tbl_nkthsl 
SET 
tarih =@tarih ,
cari_id =@cari_id ,
ad =@ad ,
ac�klama =@ac�klama ,
tahsil_edilen_fyt =@tahsil_edilen_fyt 
WHERE tahsilat_id=@tahsilat_id ;
END;

EXEC pr_thslgncl 3,'2022 -06- 06',4,'hatice','Mert Ticaret A.�. i�in tahsil edilen tutar',5900


-- ara�lar�mla ilgili de�i�iklikler meydana gelebilir g�ncellemek i�in bir prosed�r olu�turdum

CREATE PROCEDURE pr_arcgncl
(
@arac_id INT,
@plaka char(8),
@sofor_ad nvarchar(20),
@tel_no char(11),
@firma_ad nvarchar(30)
)
AS
BEGIN
UPDATE tbl_arac 
SET
plaka =@plaka,
sofor_ad=@sofor_ad,
tel_no =@tel_no ,
firma_ad =@firma_ad 
WHERE arac_id =@arac_id
END;


EXEC pr_arcgncl 1,'34-DD-40','Salih',25252525252,'Tutum Ticaret A.�.'


-- yeni bir nakliye gideri olu�mu� olabilir bunun i�in olu�turdu�um prosed�r

CREATE PROCEDURE pr_nklygdreklm
(
@sefer_id INT,
@plaka CHAR(8),
@tarih DATE,
@fiyat SMALLMONEY,
@aciklama NVARCHAR(100),
@personel_id INT
)
AS
BEGIN 
INSERT INTO tbl_nklyegdr (sefer_id, plaka, tarih, fiyat, ac�klama, personel_id)
VALUES(@sefer_id ,@plaka ,@tarih ,@fiyat ,@aciklama ,@personel_id)
END;


EXEC pr_nklygdreklm 6,'40-CC 14','2022-12-11',4800,'A �r�n� i�in g�nderi',5

-- g�nderici/al�c� tabloma yanl�� kay�t girilmi� olabilir silmek i�in olu�turdu�um prosed�r

CREATE PROCEDURE pr_gndrcalcbul
(
@gonderici_id INT,
@gonderici_ad NVARCHAR(20),
@al�c�_ad NVARCHAR(20),
@malzeme_ad NVARCHAR(30),
@cins NVARCHAR (30),
@birim NVARCHAR(20),
@miktar TINYINT,
@fiyat SMALLMONEY,
@ac�klama NVARCHAR(100),
@malzeme_id INT
)
AS
BEGIN
DELETE FROM tbl_gndrc_alc 
WHERE gonderici_id =@gonderici_id 
END;

EXEC pr_gndrcalcbul 7,'Elif Ticaret A.�.','sena','AAA �ikolata','�ikolata',39,65,444,'Elif ticaret taraf�ndan sena han�ma g�nderilen �r�n',5



-- cari tablom da g�ncellemeler olabilir bunun i�in ilgili procedure olu�turuyorum

CREATE PROCEDURE pr_crgncl
(
@cari_id INT,
@firma_ad NVARCHAR(30),
@vergi_dairesi NVARCHAR(50),
@vergi_no SMALLINT,
@yetkili_ad� NVARCHAR(30),
@tel_no CHAR(11),
@adres NVARCHAR(50)
)
AS
BEGIN 
UPDATE tbl_cari 
SET 
firma_ad =@firma_ad ,
vergi_dairesi =@vergi_dairesi ,
vergi_no =@vergi_no ,
yetkili_ad� =@yetkili_ad� ,
tel_no =@tel_no ,
adres =@adres 
WHERE cari_id =@cari_id 
END;


EXEC pr_crgncl 4,'A Ticaret A.�.','K�r�ehir Vergi Dairesi',888,'mert',74747474747,'�ankaya/ Ankara'

-- personel tablom i�in kay�t ekleme procedure olu�turuyorum

CREATE PROCEDURE pr_prsnekl
(
@personel_id INT,
@tc_no CHAR(11),
@isegir_tarih DATE,
@ad NVARCHAR(20),
@soyad NVARCHAR(20),
@unvan NVARCHAR(30),
@tel_no CHAR(11),
@maas SMALLMONEY
)
AS
BEGIN 
INSERT INTO tbl_personel ( tc_no, isegir_tarih, ad, soyad, unvan, tel_no, maas)
VALUES(@tc_no ,@isegir_tarih,@ad,@soyad,@unvan,@tel_no,@maas)
END;

EXEC pr_prsnekl 1,4444444444,'2020-04-03','mert','mert','IT Uzman�',22222222222,8999


-- olu�turdu�um procedurler listesi 

select * from sys.procedures 

-- malzemelerle ilgili tan�mlad���m fonksiyonlar

--malzemeler toplam�n� getiren fonksiyon
CREATE FUNCTION fn_mlzmlrtplm()
RETURNS INT -- geriye de�er d�nd�r�r
AS
BEGIN 
DECLARE @toplam INT;
SELECT @toplam =COUNT (malzeme_id)FROM tbl_malzeme 
RETURN @toplam
END;

-- fonksiyon silme DROP FUNCTION fn_mlzmlrtplm

select dbo.fn_mlzmlrtplm () as "malzemeler toplam�"

-- en d���k malzeme �creti
CREATE FUNCTION fn_mlzmucret()
RETURNS INT
AS
BEGIN
DECLARE @min INT;
SELECT @min =MIN(tas�ma_ucret) FROM tbl_malzeme 
RETURN @min
END;

select dbo.fn_mlzmucret () as "en dusuk tas�ma ucreti"


-- ara�lar tablomla ilgili fonksiyonlar

-- ara�lar�n toplam�n� getiren fonksiyon
CREATE FUNCTION fn_aractpl()
RETURNS INT
AS
BEGIN
DECLARE @toplam INT;
SELECT @toplam =COUNT(arac_id) FROM tbl_arac 
RETURN @toplam
END;


select dbo.fn_aractpl() as  "ara�lar�m�z�n toplam� "


-- nakit tahsilat tablomla ilgili fonksiyonlar

--tahsilatlar�m�z�n ortalamas�
CREATE FUNCTION fn_thslort()
RETURNS INT
AS
BEGIN
DECLARE @ortalama INT
SELECT @ortalama =AVG(tahsil_edilen_fyt) FROM tbl_nkthsl 
RETURN @ortalama
END;

SELECT dbo.fn_thslort () AS "tahsilatlar�m�z�n ortalamas�"


-- G�nderici Al�c� tablom ile ilgili fonksiyonlar

-- g�nderilen toplam miktar� bulan fonksiyon
CREATE FUNCTION fn_gndrcalctplm()
RETURNS INT
AS
BEGIN
DECLARE @toplammiktar INT;
SELECT @toplammiktar =SUM(miktar) FROM tbl_gndrc_alc 
RETURN @toplammiktar
END;


select dbo.fn_gndrcalctplm () as "G�nderilen Toplam Miktar"


-- Nakliye Giderleri Tablom �le ilgili fonksiyonlar�m�z

-- Ortalama nakliye giderimizi getiren fonksiyon
CREATE FUNCTION fn_ortnkly()
RETURNS INT
AS
BEGIN
DECLARE @ortnkly INT
SELECT @ortnkly =AVG(fiyat)FROM tbl_nklyegdr 
RETURN @ortnkly
END;

SELECT dbo.fn_ortnkly () as "Ortalama Nakliye Giderimiz"


-- en b�y�k nakliye giderimiz
CREATE FUNCTION fn_enkly()
RETURNS INT
AS
BEGIN
DECLARE @enkly INT
SELECT @enkly =MAX(fiyat)FROM tbl_nklyegdr 
RETURN @enkly
END;

SELECT dbo.fn_enkly () AS "En B�y�k Nakliye Giderimiz"


-- Personel Tablom �le �lgili Fonksiyonlar

--En d���k maa� alan �al��an�m�z
CREATE FUNCTION fn_endsk()
RETURNS INT
AS
BEGIN
DECLARE @endsk INT
SELECT @endsk= MIN(maas) FROM tbl_personel 
RETURN @endsk
END;


SELECT dbo.fn_endsk () as "En D���k Maa�"


-- RAISERROR �LE VER�TABANI ID DE�ER�N� VE ADINI ��RENME
DECLARE @DBID INT;
DECLARE @DBNAME NVARCHAR(128);
SET @DBID =DB_ID ();
SET @DBNAME =DB_NAME ();
RAISERROR('�u anki Veri Taban� ID De�eri: %d ve Veri Taban� ad�: %s ve Veri Taban� Uzman�: %s', 
10,--�iddet
1, --durum
@DBID,--ilk arg�man
@DBNAME,-- ikinci arg�man 
'MERTCAN TUTUM'); 



-- TRIGGER OLU�TURMA

-- Ara� tablomda yeni bir kay�t eklendikten sonra �al��acak trigger 
CREATE TRIGGER trg_arcekl
ON tbl_arac
AFTER INSERT 
AS
BEGIN
SET NOCOUNT ON
SELECT 'YEN� B�R ARA� B�LG�S� EKLEND� !!';
SET NOCOUNT OFF
END;

--yeni bir kay�t ekleyip test ettim
INSERT INTO tbl_arac (plaka, sofor_ad, tel_no, firma_ad)
VALUES('38-EE-40','Veli',78787878787,'Umut Ticaret A.�.')


-- Yeni bir personel eklendi�inde hata mesaj� f�rlats�n

CREATE TRIGGER trg_PersonelHatirlatici
ON tbl_personel
AFTER INSERT
AS
RAISERROR('Yeni Bir Personel Eklendi',10,1);


-- test ettim trigger '�
INSERT INTO tbl_personel ( [tc_no], [isegir_tarih], [ad], [soyad], [unvan], [tel_no], [maas])
VALUES(45454545454,'2020-06-06','Selim','Selim','Veri Giri� Eleman�',12121212121,9999)


-- �rne�in personel tablomda silinen veriyi mesaj olarak g�sterelim

CREATE TRIGGER trg_KullaniciSil
ON tbl_personel
AFTER DELETE
AS
BEGIN
SELECT deleted.ad + ' Kullan�c� Ad�na Ve  '+ deleted.unvan +'  Unvan�na Sahip Kullan�c� Silindi.  '
FROM deleted ;
END;

-- test ediyorum  
DELETE FROM tbl_personel WHERE tc_no =45454545454



-- Personel tablomuzda anl�k loglama i�erisinde bulunmas�n� istedi�imiz s�tunlar� bar�nd�racak tablomu olu�turuyorum sonra 
-- Bu tabloda belirtilen s�tunlar�n birebir kar��l���n�, inserted isimli s�zde tablodan alaca��z.

CREATE TABLE personellog
(
personelid INT ,
isegir_tarih date,
ad nvarchar(20),
soyad nvarchar(30),
unvan nvarchar(30)
)

CREATE TRIGGER trg_personelog
ON tbl_personel
AFTER INSERT
AS
BEGIN
INSERT INTO personellog
SELECT personel_id,isegir_tarih,ad,soyad,unvan FROM inserted
END;

-- test ediyorum
INSERT INTO tbl_personel ([tc_no], [isegir_tarih], [ad], [soyad], [unvan], [tel_no], [maas])
VALUES(65656565656,'2022-05-04','Ezgi','Ezgi','Pazarlama Uzman�',41414141414,8785)


--ER���M G�VENL���

-- Opsiyonel �ekilde oturum olu�turuyorum
CREATE LOGIN developer
WITH PASSWORD = '1234';

-- Olu�turdu�umuz login'e kullan�c� atayal�m
CREATE USER DIJIBIL
FOR LOGIN developer

--Oturumlar� d�zenlemek istersek
ALTER LOGIN developer
WITH NAME = diji_developer; -- kullan�c� ismini de�i�tirdim

-- Sunucu eri�imi verelim
GRANT CONNECT SQL TO diji_developer;

--Sunucu eri�imini kald�ral�m
DENY CONNECT SQL TO diji_developer;

--Oturumlar� etkinle�tirelim
ALTER LOGIN diji_developer ENABLE;

--Oturumlar� devre d��� b�rakal�m
ALTER LOGIN diji_developer DISABLE;

--Oturumlar� kald�rmak istersek
DROP LOGIN diji_developer


--�fade izinleri (Opsiyonel)

--�rne�in diji_developer kullan�c�s�na tbl_personel tablosunda select i�lemi yapma yetkisi verelim
GRANT SELECT
ON tbl_personel
TO diji_developer;


--�rne�in diji_developer kullan�c�s�na tbl_personel tablosunda select i�lemi yapma yetkisini kald�ral�m
REVOKE SELECT 
ON tbl_personel
TO diji_developer;

-- �rne�in diji_developer kullan�c�s�na tbl_personel tablosunda select i�lemi yapma yetkisini engelleyelim
DENY SELECT
ON tbl_personel
TO diji_developer;

-- Oturum ile rollere atama yapabiliriz
EXEC sp_addsrvrolemember diji_developer ,sysadmin;

-- ekledi�im atamay� sildim
EXEC sp_dropsrvrolemember diji_developer,sysadmin;



-- veritaban�mda yeni bir kullan�c� yarat�ld���nda admine mail g�nderen trigger
CREATE TRIGGER trg_USER_CREATE_CONTROL
ON ALL SERVER
FOR CREATE_LOGIN
AS
BEGIN
DECLARE @MSG AS VARCHAR(200)
SET @MSG=@MSG+'IP: '+CONVERT(varchar ,CONNECTIONPROPERTY('client_net_adress'))
SET @MSG=@MSG+ 'APPLICATION NAME: '+PROGRAM_NAME ()
SET @MSG =@MSG + 'USER NAME: '+SUSER_NAME ()

-- mail g�nderme
EXEC msdb.dbo.sp_send_dbmail
@profile_name ='SQLMAIL',
@recipients= 'mssqlserver640@outlook.com',
@body =@MSG,
@subject ='Yeni Bir Oturum A��ld�!!';
END

-- yeni bir oturum a�may� deneyelim 
CREATE LOGIN developer
WITH PASSWORD='1234';

-- Sistemimizde bizden habersiz bir veritaban� silinir,eklenir,de�i�tirilirse mail ats�n
CREATE TRIGGER trg_MODIFY_DATABASE
ON ALL SERVER
FOR CREATE_DATABASE,ALTER_DATABASE,DROP_DATABASE
AS 
BEGIN
DECLARE @MSG AS VARCHAR(500)
SET @MSG=@MSG+'A MODIFY DATABASE ALERT ! IP: '+ CONVERT(varchar ,CONNECTIONPROPERTY('client_net_adress'))
SET @MSG=@MSG+'PROGRAM NAME: '+PROGRAM_NAME()
SET @MSG=@MSG+'USER NAME: '+SUSER_NAME()

EXEC msdb.dbo.sp_send_dbmail
@profile_name='SQLMAIL',
@recipients='mssqlserver640@outlook.com',
@body=@MSG,
@subject='Veri Taban�nda De�i�iklik Yap�ld�!!'
END

-- �rnek olarak yeni bir veritaban� ekleyip �al��t�r�yorum
create database mert

-- olu�turdu�umuz trigger ile yeni veritaban� ekleyemesin,g�ncelleyemesin,silemesin (Opsiyonel)
CREATE TRIGGER trg_PROCESS_DATABASE
ON ALL SERVER
FOR CREATE_DATABASE,DROP_DATABASE,ALTER_DATABASE
AS
BEGIN
ROLLBACK
END


--mail durdurma
EXECUTE msdb.dbo.sysmail_stop_sp;

-- mail baslatma
EXECUTE msdb.dbo.sysmail_start_sp;


--VER� TABANI YEDEKLEME 
-- Yedekleme
BACKUP DATABASE db_lojistik
TO DISK= 'D:\bili�im proje g�z d�nemi\Backups\Yedek.bak'
WITH STATS; -- ydekleme i�leminin ger�ekle�me y�zdesini g�steriyor


-- Yeni veri taban� yede�inin eski yedek dosyas�n�n �zerine yaz�lmas� 
BACKUP DATABASE db_lojistik
TO DISK='D:\bili�im proje g�z d�nemi\Backups\Yedek2.bak'
WITH INIT;


-- Tam veri taban� yede�i yerine, fark yede�i almak i�in 
BACKUP DATABASE db_lojistik
TO DISK='D:\bili�im proje g�z d�nemi\Backups\Yedek3.bak'
WITH DIFFERENTIAL;


--Sildi�im veri taban�n� geri y�klemek i�in
RESTORE DATABASE db_lojistik
FROM DISK=N'D:\bili�im proje g�z d�nemi\Backups\Yedek.bak'


--sunucu triggerlar�n� g�rmek i�in 
select * from sys.server_triggers

--triggerlar� g�rmek i�in 
select* from sys.triggers


--CURSOR (�MLE�) Kullan�m�

-- �irketimize personel giri� ��k��lar� olabilir g�ncel halini cursor kullanarak g�relim
DECLARE @ad NVARCHAR(30), @soyad NVARCHAR(30), @unvan NVARCHAR(50),@tc_no char(11)
DECLARE PersonelCursor CURSOR
FOR
SELECT ad, soyad, unvan,tc_no FROM tbl_personel
OPEN PersonelCursor
FETCH NEXT FROM PersonelCursor INTO @ad,@soyad,@unvan,@tc_no

WHILE @@FETCH_STATUS=0
BEGIN
PRINT @ad+' '+@soyad+' '+@unvan+' '+@tc_no
FETCH NEXT FROM PersonelCursor INTO @ad,@soyad,@unvan,@tc_no
END
CLOSE PersonelCursor
DEALLOCATE PersonelCursor

