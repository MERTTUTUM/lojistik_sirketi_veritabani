-- veritabanýmý oluþturuyorum

create database db_lojistik;


-- tablolarýmý oluþturuyorum



create table tbl_cari
(
cari_id int primary key identity,
firma_ad nvarchar(30),
vergi_dairesi nvarchar(50),
vergi_no smallint,
yetkili_adý nvarchar(30),
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
tasýma_ucret smallmoney
)

create table tbl_nklyearc
(
naklýye_id int primary key identity,
tarih date,
tsm_irsliye_no char(20),
sevk_irsliye_no char(20),
plaka char(8),
sofor_ad nvarchar(20),
tel_no char(11),
arac_ýd int
)

create table tbl_gndrc_alc
(
gonderici_id int primary key identity,
gonderici_ad nvarchar(20),
alýcý_ad nvarchar(20),
malzeme_ad nvarchar(30),
cins nvarchar(20),
birim nvarchar(20),
miktar tinyint,
fiyat smallmoney,
acýklama nvarchar(100),
malzeme_id int
)

create table tbl_nklyegdr
(
gider_id int primary key identity,
sefer_id int,
plaka char(8),
tarih date,
fiyat smallmoney,
acýklama nvarchar(100),
personel_id int 
)


create table tbl_nkthsl
(
tahsilat_id int primary key identity,
tarih date,
cari_id int,
ad nvarchar(20),
acýklama nvarchar(100),
tahsil_edilen_fyt smallmoney
)


-- Veri Tabanýma kayýtlar ekliyorum

-- cari tabloma eklediðim kayýtlar
INSERT INTO tbl_cari(firma_ad, vergi_dairesi, vergi_no, yetkili_adý, tel_no, adres)
VALUES('Mert Ticaret A.Þ.','Ankara Vergi Dairesi',11111,'mert',11111111111,'Etimesgut/Ankara')

INSERT INTO tbl_cari(firma_ad, vergi_dairesi, vergi_no, yetkili_adý, tel_no, adres)
VALUES('Ahmet Ticaret A.Þ.','Kýrýkkale Vergi Dairesi',22222,'ahmet',22222222222,'Merkez/Kýrýkkale')

INSERT INTO tbl_cari(firma_ad, vergi_dairesi, vergi_no, yetkili_adý, tel_no, adres)
VALUES('Yusuf Ticaret A.Þ.','Ýstanbul Vergi Dairesi',3333,'yusuf',33333333333,'Beþiktaþ/Ýstanbul')

INSERT INTO tbl_cari(firma_ad, vergi_dairesi, vergi_no, yetkili_adý, tel_no, adres)
VALUES('Selin Ticaret A.Þ.','Mersin Vergi Dairesi',444,'Selin',44444444444,'Silifke/Mersin')

INSERT INTO tbl_cari(firma_ad, vergi_dairesi, vergi_no, yetkili_adý, tel_no, adres)
VALUES ('Elif Ticaret A.Þ.','Bursa Vergi Dairesi',555,'Elif',55555555555,'Mudanya/Bursa')


select * from tbl_cari


-- Araçlar tabloma kayýt ekliyorum

INSERT INTO tbl_arac (plaka, sofor_ad, tel_no, firma_ad)
VALUES('06 AB 79','Ahmet',11111111111,'Mert Ticaret A.Þ.')

INSERT INTO tbl_arac (plaka, sofor_ad, tel_no, firma_ad)
VALUES('40 BB 80','Burak',88888888888,'Selin Ticaret A.Þ.')

INSERT INTO tbl_arac (plaka, sofor_ad, tel_no, firma_ad)
VALUES('38 DD 90','Sena',77777777777,'Elif Ticaret A.Þ.')

INSERT INTO tbl_arac (plaka, sofor_ad, tel_no, firma_ad)
VALUES('35 ED 50','Buket',33333333333,'Ahmet Ticaret A.Þ.')

INSERT INTO tbl_arac (plaka, sofor_ad, tel_no, firma_ad)
VALUES('34 EF 40','Hatice',55555555555,'Yusuf Ticaret A.Þ.')

INSERT INTO tbl_arac (plaka, sofor_ad, tel_no, firma_ad)
VALUES('38 DD 90','Sena',77777777777,'Elif Ticaret A.Þ.')

INSERT INTO tbl_arac (plaka, sofor_ad, tel_no, firma_ad)
VALUES('35 ED 50','Buket',33333333333,'Ahmet Ticaret A.Þ.')


select * from tbl_arac 


-- Personel Tabloma kayýt ekliyorum

INSERT INTO tbl_personel (tc_no, isegir_tarih, ad, soyad, unvan, tel_no, maas)
VALUES (11111111111,'2021-06-21','mert','tutum','Veri Tabaný Uzmaný',12345678912,9000)

INSERT INTO tbl_personel (tc_no, isegir_tarih, ad, soyad, unvan, tel_no, maas)
VALUES(22222222222,'2022-09-14','burak','uçan','Muhasebe Uzmaný',14141414141,8000)

INSERT INTO tbl_personel (tc_no, isegir_tarih, ad, soyad, unvan, tel_no, maas)
VALUES(33333333333,'2020-03-12','selin','selin','Ýnsan Kaynaklarý Uzmaný',12121212121,7500)

INSERT INTO tbl_personel(tc_no, isegir_tarih, ad, soyad, unvan, tel_no, maas)
VALUES(44444444444,'2021-07-07','bora','bora','Bilgi Ýþlem Uzmaný',78787878787,8600)

INSERT INTO tbl_personel (tc_no, isegir_tarih, ad, soyad, unvan, tel_no, maas)
VALUES(55555555555,'2020-08-11','volkan','volkan','Depo Elemaný',56565656565,7400)


select * from tbl_personel 


-- Malzeme Tabloma kayýt ekliyorum


INSERT INTO tbl_malzeme (malzeme_ad, cins, birim, tasýma_ucret)
VALUES('ABC Bisküvi','Bisküvi','20',1250)

INSERT INTO tbl_malzeme (malzeme_ad, cins, birim, tasýma_ucret)
VALUES('ABC Kraker','Kraker','30',4170)

INSERT INTO tbl_malzeme (malzeme_ad, cins, birim, tasýma_ucret)
VALUES('ABC Ýçecek','Ýçecek','35',5870)

INSERT INTO tbl_malzeme (malzeme_ad, cins, birim, tasýma_ucret)
VALUES('AAA Cips','Cips','40',7890)

INSERT INTO tbl_malzeme (malzeme_ad, cins, birim, tasýma_ucret)
VALUES('AAA Çikolata','Çikolata','39',6540)


select * from tbl_malzeme 


-- nakliye araç tabloma kayýt ekliyorum

INSERT INTO tbl_nklyearc (tarih, tsm_irsliye_no, sevk_irsliye_no, plaka, sofor_ad, tel_no, arac_ýd)
VALUES(GETDATE(),45236,78956,'40 BB 80','Burak',88888888888,2)

INSERT INTO tbl_nklyearc (tarih, tsm_irsliye_no, sevk_irsliye_no, plaka, sofor_ad, tel_no, arac_ýd)
VALUES(GETDATE(),74582,23956,'06 AB 79','Ahmet',11111111111,1)

INSERT INTO tbl_nklyearc (tarih, tsm_irsliye_no, sevk_irsliye_no, plaka, sofor_ad, tel_no, arac_ýd)
VALUES(GETDATE(),45625,74512,'38 DD 90','Sena',77777777777,3)

INSERT INTO tbl_nklyearc (tarih, tsm_irsliye_no, sevk_irsliye_no, plaka, sofor_ad, tel_no, arac_ýd)
VALUES(GETDATE(),25689,42896,'35 ED 50','Buket',33333333333,4)

INSERT INTO tbl_nklyearc (tarih, tsm_irsliye_no, sevk_irsliye_no, plaka, sofor_ad, tel_no, arac_ýd)
VALUES(GETDATE(),21548,74569,'34 EF 40','Hatice',55555555555,5)


select * from db_lojistik.dbo.tbl_nklyearc 


-- gönderici alýcý bilgileri tabloma eklediðim kayýtlar

INSERT INTO tbl_gndrc_alc (gonderici_ad, alýcý_ad, malzeme_ad, cins, birim, miktar, fiyat, acýklama, malzeme_id)
VALUES('Mert Ticaret A.Þ.','burak','ABC Bisküvi','Bisküvi','20',40,400,'Mert ticaret tarafýndan burak bey e gönderilen ürün',1)

INSERT INTO tbl_gndrc_alc (gonderici_ad, alýcý_ad, malzeme_ad, cins, birim, miktar, fiyat, acýklama, malzeme_id)
VALUES('Selin Ticaret A.Þ.','volkan','ABC Kraker','Kraker','30',50,600,'Selin ticaret tarafýndan volkan bey e gönderilen ürün',2)

INSERT INTO tbl_gndrc_alc (gonderici_ad, alýcý_ad, malzeme_ad, cins, birim, miktar, fiyat, acýklama, malzeme_id)
VALUES('Ahmet Ticaret A.Þ.','mert','ABC Ýçecek','Ýçecek','35',45,800,'Ahmet ticaret tarafýndan mert bey e gönderilen ürün',3)

INSERT INTO tbl_gndrc_alc (gonderici_ad, alýcý_ad, malzeme_ad, cins, birim, miktar, fiyat, acýklama, malzeme_id)
VALUES('Yusuf Ticaret A.Þ.','elif','AAA Cips','Cips','40',95,890,'Yusuf ticaret tarafýndan elif hanýma gönderilen ürün',4)

INSERT INTO tbl_gndrc_alc (gonderici_ad, alýcý_ad, malzeme_ad, cins, birim, miktar, fiyat, acýklama, malzeme_id)
VALUES('Elif Ticaret A.Þ.','sena','AAA Çikolata','Çikolata','39',65,444,'Elif ticaret tarafýndan sena hanýma gönderilen ürün',5)

INSERT INTO tbl_gndrc_alc (gonderici_ad, alýcý_ad, malzeme_ad, cins, birim, miktar, fiyat, acýklama, malzeme_id)
VALUES('Elif Ticaret A.Þ.','sena','AAA Çikolata','Çikolata','39',65,444,'Elif ticaret tarafýndan sena hanýma gönderilen ürün',5)



select * from db_lojistik.dbo.tbl_gndrc_alc 


-- nakliye gideri tabloma kayýt ekliyorum

INSERT INTO tbl_nklyegdr (sefer_id, plaka, tarih, fiyat, acýklama, personel_id)
VALUES(1,'40 BB 80',GETDATE (),5400,'x ürünü için gönderi gideri',1)

INSERT INTO tbl_nklyegdr (sefer_id, plaka, tarih, fiyat, acýklama, personel_id)
VALUES(2,'06 AB 79',GETDATE(),9800,'X ürünü için gönderi gideri',2)

INSERT INTO tbl_nklyegdr (sefer_id, plaka, tarih, fiyat, acýklama, personel_id)
VALUES(3,'38 DD 90',GETDATE(),1000,'X ürünü için gönderi gideri',3)

INSERT INTO tbl_nklyegdr (sefer_id, plaka, tarih, fiyat, acýklama, personel_id)
VALUES(4,'35 ED 50',GETDATE(),7000,'X ürünü için gönderi gideri',4)

INSERT INTO tbl_nklyegdr (sefer_id, plaka, tarih, fiyat, acýklama, personel_id)
VALUES(5,'34 EF 40',GETDATE(),6500,'X ürünü için gönderi gideri',5)

select * from db_lojistik .dbo.tbl_nklyegdr 


-- nakit tahsilat tablom için gönderi gideri

INSERT INTO tbl_nkthsl (tarih, cari_id, ad, acýklama, tahsil_edilen_fyt)
VALUES(GETDATE(),1,'mert','Mert Ticaret A.Þ. için tahsil edilen tutar',5800)

INSERT INTO tbl_nkthsl (tarih, cari_id, ad, acýklama, tahsil_edilen_fyt)
VALUES(GETDATE (),2,'mert','Ahmet Ticaret A.Þ. için tahsil edilen tutar',8400)

INSERT INTO tbl_nkthsl (tarih, cari_id, ad, acýklama, tahsil_edilen_fyt)
VALUES(GETDATE (),3,'mert','Yusuf Ticaret A.Þ. için tahsil edilen tutar',9500)

INSERT INTO tbl_nkthsl (tarih, cari_id, ad, acýklama, tahsil_edilen_fyt)
VALUES(GETDATE (),4,'mert','Selin Ticaret A.Þ. için tahsil edilen tutar',6300)

INSERT INTO tbl_nkthsl (tarih, cari_id, ad, acýklama, tahsil_edilen_fyt)
VALUES(GETDATE (),5,'mert','Elif Ticaret A.Þ. için tahsil edilen tutar',5500)


select* from db_lojistik .dbo.tbl_nkthsl 


-- PROCEDURE OLUÞTURUYORUM

-- tahsilatlarýmý hýzlý þekilde güncellemek için bir procedure tanýmladým

CREATE PROCEDURE pr_thslgncl
(
@tahsilat_id INT,
@tarih date,
@cari_id INT,
@ad NVARCHAR(20),
@acýklama NVARCHAR(50),
@tahsil_edilen_fyt smallmoney
)
AS 
BEGIN
UPDATE tbl_nkthsl 
SET 
tarih =@tarih ,
cari_id =@cari_id ,
ad =@ad ,
acýklama =@acýklama ,
tahsil_edilen_fyt =@tahsil_edilen_fyt 
WHERE tahsilat_id=@tahsilat_id ;
END;

EXEC pr_thslgncl 3,'2022 -06- 06',4,'hatice','Mert Ticaret A.Þ. için tahsil edilen tutar',5900


-- araçlarýmla ilgili deðiþiklikler meydana gelebilir güncellemek için bir prosedür oluþturdum

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


EXEC pr_arcgncl 1,'34-DD-40','Salih',25252525252,'Tutum Ticaret A.Þ.'


-- yeni bir nakliye gideri oluþmuþ olabilir bunun için oluþturduðum prosedür

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
INSERT INTO tbl_nklyegdr (sefer_id, plaka, tarih, fiyat, acýklama, personel_id)
VALUES(@sefer_id ,@plaka ,@tarih ,@fiyat ,@aciklama ,@personel_id)
END;


EXEC pr_nklygdreklm 6,'40-CC 14','2022-12-11',4800,'A ürünü için gönderi',5

-- gönderici/alýcý tabloma yanlýþ kayýt girilmiþ olabilir silmek için oluþturduðum prosedür

CREATE PROCEDURE pr_gndrcalcbul
(
@gonderici_id INT,
@gonderici_ad NVARCHAR(20),
@alýcý_ad NVARCHAR(20),
@malzeme_ad NVARCHAR(30),
@cins NVARCHAR (30),
@birim NVARCHAR(20),
@miktar TINYINT,
@fiyat SMALLMONEY,
@acýklama NVARCHAR(100),
@malzeme_id INT
)
AS
BEGIN
DELETE FROM tbl_gndrc_alc 
WHERE gonderici_id =@gonderici_id 
END;

EXEC pr_gndrcalcbul 7,'Elif Ticaret A.Þ.','sena','AAA Çikolata','Çikolata',39,65,444,'Elif ticaret tarafýndan sena hanýma gönderilen ürün',5



-- cari tablom da güncellemeler olabilir bunun için ilgili procedure oluþturuyorum

CREATE PROCEDURE pr_crgncl
(
@cari_id INT,
@firma_ad NVARCHAR(30),
@vergi_dairesi NVARCHAR(50),
@vergi_no SMALLINT,
@yetkili_adý NVARCHAR(30),
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
yetkili_adý =@yetkili_adý ,
tel_no =@tel_no ,
adres =@adres 
WHERE cari_id =@cari_id 
END;


EXEC pr_crgncl 4,'A Ticaret A.Þ.','Kýrþehir Vergi Dairesi',888,'mert',74747474747,'Çankaya/ Ankara'

-- personel tablom için kayýt ekleme procedure oluþturuyorum

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

EXEC pr_prsnekl 1,4444444444,'2020-04-03','mert','mert','IT Uzmaný',22222222222,8999


-- oluþturduðum procedurler listesi 

select * from sys.procedures 

-- malzemelerle ilgili tanýmladýðým fonksiyonlar

--malzemeler toplamýný getiren fonksiyon
CREATE FUNCTION fn_mlzmlrtplm()
RETURNS INT -- geriye deðer döndürür
AS
BEGIN 
DECLARE @toplam INT;
SELECT @toplam =COUNT (malzeme_id)FROM tbl_malzeme 
RETURN @toplam
END;

-- fonksiyon silme DROP FUNCTION fn_mlzmlrtplm

select dbo.fn_mlzmlrtplm () as "malzemeler toplamý"

-- en düþük malzeme ücreti
CREATE FUNCTION fn_mlzmucret()
RETURNS INT
AS
BEGIN
DECLARE @min INT;
SELECT @min =MIN(tasýma_ucret) FROM tbl_malzeme 
RETURN @min
END;

select dbo.fn_mlzmucret () as "en dusuk tasýma ucreti"


-- araçlar tablomla ilgili fonksiyonlar

-- araçlarýn toplamýný getiren fonksiyon
CREATE FUNCTION fn_aractpl()
RETURNS INT
AS
BEGIN
DECLARE @toplam INT;
SELECT @toplam =COUNT(arac_id) FROM tbl_arac 
RETURN @toplam
END;


select dbo.fn_aractpl() as  "araçlarýmýzýn toplamý "


-- nakit tahsilat tablomla ilgili fonksiyonlar

--tahsilatlarýmýzýn ortalamasý
CREATE FUNCTION fn_thslort()
RETURNS INT
AS
BEGIN
DECLARE @ortalama INT
SELECT @ortalama =AVG(tahsil_edilen_fyt) FROM tbl_nkthsl 
RETURN @ortalama
END;

SELECT dbo.fn_thslort () AS "tahsilatlarýmýzýn ortalamasý"


-- Gönderici Alýcý tablom ile ilgili fonksiyonlar

-- gönderilen toplam miktarý bulan fonksiyon
CREATE FUNCTION fn_gndrcalctplm()
RETURNS INT
AS
BEGIN
DECLARE @toplammiktar INT;
SELECT @toplammiktar =SUM(miktar) FROM tbl_gndrc_alc 
RETURN @toplammiktar
END;


select dbo.fn_gndrcalctplm () as "Gönderilen Toplam Miktar"


-- Nakliye Giderleri Tablom Ýle ilgili fonksiyonlarýmýz

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


-- en büyük nakliye giderimiz
CREATE FUNCTION fn_enkly()
RETURNS INT
AS
BEGIN
DECLARE @enkly INT
SELECT @enkly =MAX(fiyat)FROM tbl_nklyegdr 
RETURN @enkly
END;

SELECT dbo.fn_enkly () AS "En Büyük Nakliye Giderimiz"


-- Personel Tablom Ýle Ýlgili Fonksiyonlar

--En düþük maaþ alan çalýþanýmýz
CREATE FUNCTION fn_endsk()
RETURNS INT
AS
BEGIN
DECLARE @endsk INT
SELECT @endsk= MIN(maas) FROM tbl_personel 
RETURN @endsk
END;


SELECT dbo.fn_endsk () as "En Düþük Maaþ"


-- RAISERROR ÝLE VERÝTABANI ID DEÐERÝNÝ VE ADINI ÖÐRENME
DECLARE @DBID INT;
DECLARE @DBNAME NVARCHAR(128);
SET @DBID =DB_ID ();
SET @DBNAME =DB_NAME ();
RAISERROR('Þu anki Veri Tabaný ID Deðeri: %d ve Veri Tabaný adý: %s ve Veri Tabaný Uzmaný: %s', 
10,--þiddet
1, --durum
@DBID,--ilk argüman
@DBNAME,-- ikinci argüman 
'MERTCAN TUTUM'); 



-- TRIGGER OLUÞTURMA

-- Araç tablomda yeni bir kayýt eklendikten sonra çalýþacak trigger 
CREATE TRIGGER trg_arcekl
ON tbl_arac
AFTER INSERT 
AS
BEGIN
SET NOCOUNT ON
SELECT 'YENÝ BÝR ARAÇ BÝLGÝSÝ EKLENDÝ !!';
SET NOCOUNT OFF
END;

--yeni bir kayýt ekleyip test ettim
INSERT INTO tbl_arac (plaka, sofor_ad, tel_no, firma_ad)
VALUES('38-EE-40','Veli',78787878787,'Umut Ticaret A.Þ.')


-- Yeni bir personel eklendiðinde hata mesajý fýrlatsýn

CREATE TRIGGER trg_PersonelHatirlatici
ON tbl_personel
AFTER INSERT
AS
RAISERROR('Yeni Bir Personel Eklendi',10,1);


-- test ettim trigger 'ý
INSERT INTO tbl_personel ( [tc_no], [isegir_tarih], [ad], [soyad], [unvan], [tel_no], [maas])
VALUES(45454545454,'2020-06-06','Selim','Selim','Veri Giriþ Elemaný',12121212121,9999)


-- örneðin personel tablomda silinen veriyi mesaj olarak gösterelim

CREATE TRIGGER trg_KullaniciSil
ON tbl_personel
AFTER DELETE
AS
BEGIN
SELECT deleted.ad + ' Kullanýcý Adýna Ve  '+ deleted.unvan +'  Unvanýna Sahip Kullanýcý Silindi.  '
FROM deleted ;
END;

-- test ediyorum  
DELETE FROM tbl_personel WHERE tc_no =45454545454



-- Personel tablomuzda anlýk loglama içerisinde bulunmasýný istediðimiz sütunlarý barýndýracak tablomu oluþturuyorum sonra 
-- Bu tabloda belirtilen sütunlarýn birebir karþýlýðýný, inserted isimli sözde tablodan alacaðýz.

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
VALUES(65656565656,'2022-05-04','Ezgi','Ezgi','Pazarlama Uzmaný',41414141414,8785)


--ERÝÞÝM GÜVENLÝÐÝ

-- Opsiyonel þekilde oturum oluþturuyorum
CREATE LOGIN developer
WITH PASSWORD = '1234';

-- Oluþturduðumuz login'e kullanýcý atayalým
CREATE USER DIJIBIL
FOR LOGIN developer

--Oturumlarý düzenlemek istersek
ALTER LOGIN developer
WITH NAME = diji_developer; -- kullanýcý ismini deðiþtirdim

-- Sunucu eriþimi verelim
GRANT CONNECT SQL TO diji_developer;

--Sunucu eriþimini kaldýralým
DENY CONNECT SQL TO diji_developer;

--Oturumlarý etkinleþtirelim
ALTER LOGIN diji_developer ENABLE;

--Oturumlarý devre dýþý býrakalým
ALTER LOGIN diji_developer DISABLE;

--Oturumlarý kaldýrmak istersek
DROP LOGIN diji_developer


--Ýfade izinleri (Opsiyonel)

--Örneðin diji_developer kullanýcýsýna tbl_personel tablosunda select iþlemi yapma yetkisi verelim
GRANT SELECT
ON tbl_personel
TO diji_developer;


--Örneðin diji_developer kullanýcýsýna tbl_personel tablosunda select iþlemi yapma yetkisini kaldýralým
REVOKE SELECT 
ON tbl_personel
TO diji_developer;

-- Örneðin diji_developer kullanýcýsýna tbl_personel tablosunda select iþlemi yapma yetkisini engelleyelim
DENY SELECT
ON tbl_personel
TO diji_developer;

-- Oturum ile rollere atama yapabiliriz
EXEC sp_addsrvrolemember diji_developer ,sysadmin;

-- eklediðim atamayý sildim
EXEC sp_dropsrvrolemember diji_developer,sysadmin;



-- veritabanýmda yeni bir kullanýcý yaratýldýðýnda admine mail gönderen trigger
CREATE TRIGGER trg_USER_CREATE_CONTROL
ON ALL SERVER
FOR CREATE_LOGIN
AS
BEGIN
DECLARE @MSG AS VARCHAR(200)
SET @MSG=@MSG+'IP: '+CONVERT(varchar ,CONNECTIONPROPERTY('client_net_adress'))
SET @MSG=@MSG+ 'APPLICATION NAME: '+PROGRAM_NAME ()
SET @MSG =@MSG + 'USER NAME: '+SUSER_NAME ()

-- mail gönderme
EXEC msdb.dbo.sp_send_dbmail
@profile_name ='SQLMAIL',
@recipients= 'mssqlserver640@outlook.com',
@body =@MSG,
@subject ='Yeni Bir Oturum Açýldý!!';
END

-- yeni bir oturum açmayý deneyelim 
CREATE LOGIN developer
WITH PASSWORD='1234';

-- Sistemimizde bizden habersiz bir veritabaný silinir,eklenir,deðiþtirilirse mail atsýn
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
@subject='Veri Tabanýnda Deðiþiklik Yapýldý!!'
END

-- örnek olarak yeni bir veritabaný ekleyip çalýþtýrýyorum
create database mert

-- oluþturduðumuz trigger ile yeni veritabaný ekleyemesin,güncelleyemesin,silemesin (Opsiyonel)
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


--VERÝ TABANI YEDEKLEME 
-- Yedekleme
BACKUP DATABASE db_lojistik
TO DISK= 'D:\biliþim proje güz dönemi\Backups\Yedek.bak'
WITH STATS; -- ydekleme iþleminin gerçekleþme yüzdesini gösteriyor


-- Yeni veri tabaný yedeðinin eski yedek dosyasýnýn üzerine yazýlmasý 
BACKUP DATABASE db_lojistik
TO DISK='D:\biliþim proje güz dönemi\Backups\Yedek2.bak'
WITH INIT;


-- Tam veri tabaný yedeði yerine, fark yedeði almak için 
BACKUP DATABASE db_lojistik
TO DISK='D:\biliþim proje güz dönemi\Backups\Yedek3.bak'
WITH DIFFERENTIAL;


--Sildiðim veri tabanýný geri yüklemek için
RESTORE DATABASE db_lojistik
FROM DISK=N'D:\biliþim proje güz dönemi\Backups\Yedek.bak'


--sunucu triggerlarýný görmek için 
select * from sys.server_triggers

--triggerlarý görmek için 
select* from sys.triggers


--CURSOR (ÝMLEÇ) Kullanýmý

-- Þirketimize personel giriþ çýkýþlarý olabilir güncel halini cursor kullanarak görelim
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

