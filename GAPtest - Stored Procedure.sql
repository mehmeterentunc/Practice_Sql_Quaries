--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------ÇALIÞANLAR--------------------------------------------------------------------------------------------------------

exec sp_CalisanEkle --INSERT
@Ad='Kadir', 
@Soyad='Aydýn', 
@PozisyonID=5, 
@BaslangicTarih='2023-01-01', 
@Maas=12500, 
@Adres='Bahçelievler', 
@Iletisim='05XX XXX XX XX', 
@Cinsiyet=1

exec sp_CalisanGuncelle --UPDATE
@CalisanlarID=19,
@Ad='Hasan Kadir', 
@Soyad='Aydýn', 
@PozisyonID=5, 
@BaslangicTarih='2023-01-01',
@Maas=15000,@Adres='Bahçelievler',
@Iletisim='XXXX XXX XX XX',
@Cinsiyet=1

exec sp_CalisanSil @CalisanlarID=19 --DELETE

exec sp_CalisanGetir --SELECT

--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------KATEGORÝLER--------------------------------------------------------------------------------------------------------

exec sp_KategoriEkle 'Deneme Kategori' --INSERT

exec sp_KategoriGuncelle @KategoriID=6, @Kategori='Deneme Kategori 2' --UPDATE

exec sp_KategoriSil @KategoriID=6 --DELETE

exec sp_KategoriGetir --SELECT

--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------MODELLER----------------------------------------------------------------------------------------------------------


exec sp_ModelEkle 'Deneme Model' , 3  --INSERT

exec sp_ModelGuncelle 16,'Deneme Model 2',4  --UPDATE

exec sp_ModelSil 16 --DELETE

exec sp_ModelGetir --SELECT

--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------MÜÞTERÝLER---------------------------------------------------------------------------------------------------------

exec sp_MusteriEkle 'Deneme', 'Deneme', 'XXXX XXX XX XX', 0,'Bakýrköy' --INSERT

exec sp_MusteriGuncelle 7, 'Deneme2', 'Deneme2', 'XXXX XXX XX XX',1,'Sultangazi' --UPDATE

exec sp_MusteriSil 7 --DELETE

exec sp_MusteriGetir --SELECT 

--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------POZÝSYONLAR---------------------------------------------------------------------------------------------------------

exec sp_PozisyonEkle 'DenemePozisyon' --INSERT

exec sp_PozisyonGuncelle 9 ,'DenemePozisyon2' --UPDATE

exec sp_PozisyonSil 9 --DELETE

exec sp_PozisyonGetir --SELECT

--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------SÝPARÝÞLER---------------------------------------------------------------------------------------------------------

exec sp_SiparisEkle 7,3,7 --INSERT

exec sp_SiparisGuncelle 5,7,3,8 --UPDATE 

exec sp_SiparisSil 5 --DELETE

exec sp_SiparisGetir --SELECT

--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------TEDARÝKÇÝLER---------------------------------------------------------------------------------------------------------

exec sp_TedarikciEkle 'HITACHI' --INSERT

exec sp_TedarikciGuncelle 7,'Deneme' --UPDATE

exec sp_TedarikciSil 7 --DELETE

exec sp_TedarikciGetir --SELECT

--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------ÜRÜNLER-----------------------------------------------------------------------------------------------------------

exec sp_UrunEkle 'Deneme',2,15000,100,1 --INSERT

exec sp_UrunGuncelle 31,'Deneme2',3,16000,150,2 --UPDATE

exec sp_UrunSil 31 --DELETE

exec sp_UrunGetir --SELECT



