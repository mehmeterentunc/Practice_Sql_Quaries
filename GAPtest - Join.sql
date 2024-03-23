--Bütün tablolarý birleþtirip getirmek.
select*from Kategoriler k inner join Modeller m on k.KategoriID=m.KategoriID 
inner join Urunler u on u.ModelID = m.ModelID
inner join Tedarikciler t on t.TedarikciID=u.TedarikciID
left join Siparisler s on u.UrunID=s.UrunID
left join Calisanlar c on s.CalisanID=c.CalisanlarID
left join Pozisyonlar p on p.PozisyonID=c.PozisyonID

--Sataný, ürünü ve alaný getir, Fiyatýn durumunu yaz.
Select*, CASE 
WHEN Fiyat between '0' and '2000' THEN 'Ucuz'
WHEN Fiyat between '2000' and '5000' THEN 'Orta'
WHEN Fiyat between '5000' and '40000' THEN 'Pahalý'
END as 'Durum' from 
(select CONCAT(b.Ad,+' '+b.Soyad) as 'Satan',c.Urun,c.Fiyat, CONCAT(d.Ad,+' '+d.Soyad) as 'Alan' from Siparisler a 
inner join  Calisanlar b on a.CalisanID=b.CalisanlarID 
inner join Urunler c on a.UrunID=c.UrunID
inner join Musteriler d on d.MusteriID=a.MusteriID) as SiparisDetay

