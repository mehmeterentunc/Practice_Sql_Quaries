--1)Ad�n�n i�inde "ur" olanlar� getir.
Select*From Employees where FirstName like '%ur%'

--2)Soyisimlerin son iki harfini getir.
Select LastName, Right(LastName,2) from Employees

--3)Ad�n�n ilk harfi b�y�k sonraki harafleri k���k, soyismin hepsi b�y�k.
Select (UPPER(SUBSTRING(FirstName,1,1)))+SUBSTRING(FirstName,2,len(FirstName)), UPPER(LastName) as 'LastName' from Employees

--4)TitleOfCourstesy alan�nda Ms. Kad�n, Mr Erkek, Dr Doctor, Mrs K�z yaz�cak.
Select TitleOfCourtesy, CASE TitleOfCourtesy 
WHEN 'Ms.' THEN 'Kad�n'
WHEN 'Mr.' THEN 'Erkek'
WHEN 'Dr.' THEN 'Doktor'
WHEN 'Mrs.' THEN 'K�z'
END AS 'Turkish Title' from Employees

--5)FirstName ve LastName uzunluklar�n�n toplam�n� getir
Select FirstName, LastName, len(FirstName)+len(LastName) as'Toplamlar�' from Employees

--6)City'ye g�re grupland�r.
Select count(EmployeeID) as 'Employee', City from Employees group by City

--6.1)En �ok hangi �lkede ya�an�yosa, o �lke ve ya�ayan say�s�n� getir.
Select top 1 Country, count(EmployeeID) as 'count'
from Employees
group by Country
order by count desc


--7)City'si london ve seattle olanlar�n ilk d�rt kolonunu getir.
Select EmployeeID, FirstName, LastName,City Title from Employees where City='London' or City='Seattle'

--8)EmployeID'si 6 ve 9 olan personelleri getirme.
Select*from Employees WHERE EmployeeID NOT IN (6,9)

--9)En ya�l� ve en gen� �al��anlar� getir.
SELECT * FROM Employees WHERE BirthDate = (SELECT MAX(BirthDate) FROM Employees) OR BirthDate = (SELECT MIN(BirthDate) FROM Employees)

--10)Extension alan�nda 2000 ile 4000 aras�ndaki t�m verileri getir.
Select*from Employees where Extension between 2000 and 4000

--11)�lk 5 kolonu tek kolon olarak aralar�nda bo�luk b�rakarak getir.
Select CONCAT(EmployeeID,' ',FirstName,' ',LastName,' ',Title,' ',TitleOfCourtesy) AS 'First5Columns' from Employees
Select CAST(EmployeeID AS nvarchar)+' '+FirstName+' '+LastName from Employees

--12)Do�um tarihine g�re 3'e b�lerek s�ralama yap.
Select*, CASE  
WHEN BirthDate between '1936' and '1953' THEN 'Ya�l�'
WHEN BirthDate between '1954' and '1961' THEN 'Orta Ya�'
WHEN BirthDate between '1962' and '1968' THEN 'Gen�'
END from Employees order by BirthDate desc



