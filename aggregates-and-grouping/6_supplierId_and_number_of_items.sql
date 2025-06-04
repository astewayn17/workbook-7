SELECT
	SupplierID
    , COUNT(*) AS NumberOfProducts
FROM
	northwind.products
GROUP BY
	SupplierID;