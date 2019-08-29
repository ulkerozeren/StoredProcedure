CREATE TABLE Urunler (
    UrunID int not null,
    UrunAdi varchar(255) not null,
	 PRIMARY KEY (UrunID)
);

CREATE TABLE Musteriler (
    MusteriID int not null,
    MusteriAdi varchar(255) not null,
    MusteriSoyadi varchar(255) not null,
    Adres varchar(255) not null,
    Sehir varchar(255) not null,
	GSM varchar(30) not null ,
	PRIMARY KEY (MusteriID)
);

CREATE TABLE Satislar (
    SatisID int not null,
    MusteriID int  not null,
    SatisTarihi datetime not null,
	UrunID int not null,
	PRIMARY KEY (SatisID)
);

Alter table Satislar
ADD CONSTRAINT FK_MusteriSatis
FOREIGN KEY (MusteriID) REFERENCES Musteriler(MusteriID);

Alter table Satislar
ADD CONSTRAINT FK_UrunSatis
FOREIGN KEY (UrunID) REFERENCES Urunler(UrunID);

insert into Musteriler (MusteriID, MusteriAdi,MusteriSoyadi, Adres, Sehir, GSM)
 select 1,'Ulker','Ozeren', 'adres1','ankara','5435657'
 union
  select 2,'Ayse','Yilmaz', 'adres2','izmir','5463423435'

insert into Urunler ( UrunID, UrunAdi)
 select 1,'etek'
 union
 select 2,'elbise'
 union
 select 3,'kazak'

 insert into Satislar (SatisID,MusteriID, SatisTarihi,UrunID)
 select 1,1,'12.03.2019',1
 union 
 select 2,2,'03.04.2018',2
 union 
 select 3,1,'11.05.2019',2
  









