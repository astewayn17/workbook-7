SELECT 
	ProductName, UnitsInStock, UnitsOnOrder
FROM
	northwind.products
WHERE 
	UnitsInStock = 0
    AND UnitsOnOrder >= 1
ORDER BY
	ProductName