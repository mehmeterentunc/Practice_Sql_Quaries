--1)Adýnýn içinde "ur" olanlarý getir.
Select*From Employees where FirstName like '%ur%'

--2)Soyisimlerin son iki harfini getir.
Select LastName, Right(LastName,2) from Employees

--3)Adýnýn ilk harfi büyük sonraki harafleri küçük, soyismin hepsi büyük.
Select (UPPER(SUBSTRING(FirstName,1,1)))+SUBSTRING(FirstName,2,len(FirstName)), UPPER(LastName) as 'LastName' from Employees

--4)TitleOfCourstesy alanýnda Ms. Kadýn, Mr Erkek, Dr Doctor, Mrs Kýz yazýcak.
Select TitleOfCourtesy, CASE TitleOfCourtesy 
WHEN 'Ms.' THEN 'Kadýn'
WHEN 'Mr.' THEN 'Erkek'
WHEN 'Dr.' THEN 'Doktor'
WHEN 'Mrs.' THEN 'Kýz'
END AS 'Turkish Title' from Employees

--5)FirstName ve LastName uzunluklarýnýn toplamýný getir
Select FirstName, LastName, len(FirstName)+len(LastName) as'Toplamlarý' from Employees

--6)City'ye göre gruplandýr.
Select count(EmployeeID) as 'Employee', City from Employees group by City

--6.1)En çok hangi ülkede yaþanýyosa, o ülke ve yaþayan sayýsýný getir.
Select top 1 Country, count(EmployeeID) as 'count'
from Employees
group by Country
order by count desc


--7)City'si london ve seattle olanlarýn ilk dört kolonunu getir.
Select EmployeeID, FirstName, LastName,City Title from Employees where City='London' or City='Seattle'

--8)EmployeID'si 6 ve 9 olan personelleri getirme.
Select*from Employees WHERE EmployeeID NOT IN (6,9)

--9)En yaþlý ve en genç çalýþanlarý getir.
SELECT * FROM Employees WHERE BirthDate = (SELECT MAX(BirthDate) FROM Employees) OR BirthDate = (SELECT MIN(BirthDate) FROM Employees)

--10)Extension alanýnda 2000 ile 4000 arasýndaki tüm verileri getir.
Select*from Employees where Extension between 2000 and 4000

--11)Ýlk 5 kolonu tek kolon olarak aralarýnda boþluk býrakarak getir.
Select CONCAT(EmployeeID,' ',FirstName,' ',LastName,' ',Title,' ',TitleOfCourtesy) AS 'First5Columns' from Employees
Select CAST(EmployeeID AS nvarchar)+' '+FirstName+' '+LastName from Employees

--12)Doðum tarihine göre 3'e bölerek sýralama yap.
Select*, CASE  
WHEN BirthDate between '1936' and '1953' THEN 'Yaþlý'
WHEN BirthDate between '1954' and '1961' THEN 'Orta Yaþ'
WHEN BirthDate between '1962' and '1968' THEN 'Genç'
END from Employees order by BirthDate desc



