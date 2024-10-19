--Fonksiyon oluþtur, kullanýcýnýn girdiði isimlerin ilk harfi büyük, soyisminin hepsi büyük olsun.
ALTER FUNCTION fn_OtomatikBuyukHarf(@ad varchar(100), @soyad varchar(20))
RETURNS VARCHAR(121)
AS
BEGIN
    DECLARE @sonuc VARCHAR(121)
	DECLARE @table TABLE(adlar varchar(100))

	INSERT INTO @table
	SELECT VALUE FROM string_split(@ad,' ')

	Select @sonuc = STRING_AGG(UPPER(SUBSTRING(adlar,1,1)) + LOWER(SUBSTRING(adlar,2,len(adlar))),' ')+' '+UPPER(@soyad) from @table

    RETURN @sonuc
END

select dbo.fn_OtomatikBuyukHarf('kadir abi tek kelime ile opp','kraldýr')

--Kullanýcýnýn girdiði tarihi düzelten fonksiyon oluþtur.
ALTER FUNCTION fn_TarihDuzelt(@tarih nvarchar(50))
RETURNS DATETIME
AS
BEGIN
    SELECT @tarih = CONVERT(datetime, @tarih, 102)
	RETURN @tarih
END

select dbo.fn_TarihDuzelt('09-08-2008')