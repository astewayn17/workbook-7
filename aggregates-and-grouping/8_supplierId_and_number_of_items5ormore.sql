SELECT
	SupplierID
    , COUNT(*) AS NumberOfItemsSupplied
FROM
	northwind.products
GROUP BY
	SupplierID
HAVING
	COUNT(*) >= 5;