create view satisozet as
select Musteriler.MusteriAdi,Musteriler.MusteriSoyadi,Urunler.UrunAdi,Satislar.SatisTarihi
 from Satislar 
join  Musteriler on Satislar.MusteriID=Musteriler.MusteriID
join Urunler on Urunler.UrunID=Satislar.UrunID;