SELECT 
	ProductID, ProductName, UnitPrice, UnitsInStock
FROM
	northwind.products
WHERE 
	UnitsInStock >= 100
ORDER BY
	UnitPrice DESC,
    ProductName  -- This will sort by name in ascending order if they have the same price