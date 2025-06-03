-- There is a supplier id that tells us what supplier it is in the products table
USE
	northwind;
SELECT
	p.ProductName
FROM
	products p
LEFT JOIN
	 suppliers s ON p.SupplierID = s.SupplierID
WHERE
	s.CompanyName = 'Tokyo Traders'
	