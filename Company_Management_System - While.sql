--Çalışanlar tablosundaki isimleri tek satırda virgülle birlikte yazmak.
DECLARE @sayac int = 1
DECLARE @maxid int = 0
DECLARE @output nvarchar(150)=''

DECLARE @deneme TABLE (
ID int identity,
Ad nvarchar(100))

INSERT INTO @deneme
SELECT Ad from Calisanlar

SELECT @maxid = COUNT(ID) from @deneme

WHILE @sayac <= @maxid
BEGIN

SET @output = @output + (SELECT Ad from @deneme where ID = @sayac) + ','
SET @sayac=@sayac+1
END
SELECT @output


