-- Uses the categoryID to identify type
SELECT 
	p.ProductName
FROM 
	northwind.products p
LEFT JOIN 
	northwind.categories c ON p.CategoryID = c.CategoryID
WHERE 
	c.CategoryName = 'Seafood'
	