--B�t�n tablolar� birle�tirir.
select*from 
Employees e inner join Orders o on e.EmployeeID=o.EmployeeID
inner join [Order Details] od on o.OrderID=od.OrderID
inner join Products p on od.ProductID=p.ProductID
inner join Categories c on p.CategoryID=c.CategoryID
inner join Customers cr on o.CustomerID=cr.CustomerID
inner join Suppliers s on p.SupplierID = s.SupplierID
inner join Shippers sh on o.ShipVia = sh.ShipperID
inner join EmployeeTerritories et on e.EmployeeID=et.EmployeeID
inner join Territories T ON et.TerritoryID=T.TerritoryID
inner join Region r on t.RegionID=r.RegionID

--En �ok sat�lan �r�n� ve ka� kere sat�ld���n� getir.
Select top 1 a.ProductName,COUNT(b.ProductID) from Products a inner join [Order Details] b on a.ProductID=b.ProductID group by ProductName

--�r�n�n ad�n� fiyat�n� ve kategorisini getir fiyata g�rse s�rala.(Sonradan paranteze ald�k, parantez i�ine tablo ad� verdik)
select * from  (select a.ProductName, a.UnitPrice, b.CategoryName from Products a
inner join Categories b on a.CategoryID=b.CategoryID ) as yy
order by yy.UnitPrice 







