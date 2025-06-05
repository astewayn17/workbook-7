-- #1 List the product id, product name, unit price and category name of all 
--    products. Order by category name and within that, by product name.
SELECT
	P.ProductID
    , P.ProductName
    , P.UnitPrice
    , C.CategoryName
FROM
	northwind.Products P
JOIN 
	northwind.Categories C ON (C.CategoryID = P.CategoryID)
ORDER BY
	C.CategoryName,
    P.ProductName;

-- #2 List the product id, product name, unit price and supplier name of all 
--    products that cost more than $75. Order by product name.
SELECT
	P.ProductID
    , P.ProductName
    , P.UnitPrice
    , S.ContactName
FROM
	northwind.Products P
JOIN 
	northwind.Suppliers S ON (S.SupplierID = P.SupplierID)
WHERE 
	P.UnitPrice > 75
ORDER BY
    P.ProductName;
	
-- #3 List the product id, product name, unit price, category name, and supplier 
--    name of every product. Order by product name. 
SELECT
	P.ProductID
    , P.ProductName
	, P.UnitPrice
    , C.CategoryName
    , S.ContactName
FROM
	northwind.products P
JOIN
	northwind.suppliers S ON (S.SupplierID = P.SupplierID)
JOIN    
    categories C ON (C.CategoryID = P.CategoryID)
ORDER BY
	ProductName;
    
-- #4 What is the product name(s) and categories of the most expensive 
--    products? HINT: Find the max price in a subquery and then use that in 
--    your more complex query that joins products with categories. 
SELECT
	P.ProductName
    , C.CategoryName
FROM 
	northwind.products P
JOIN
	northwind.categories C ON (C.CategoryID = P.CategoryID)
WHERE
	P.UnitPrice = (SELECT MAX(UnitPrice)
				   FROM northwind.Products);

-- #5 List the order id, ship name, ship address, and shipping company name of 
--    every order that shipped to Germany. 
SELECT
	O.OrderID
    , O.ShipName
    , O.ShipAddress
    , S.CompanyName
FROM
	northwind.orders O
JOIN
	northwind.shippers S ON (O.ShipVia = S.ShipperID)
WHERE
	O.ShipCountry = 'Germany';

-- #6 List the order id, order date, ship name, ship address of all orders that 
--    ordered "Sasquatch Ale"?  
SELECT
	O.OrderID
    , O.OrderDate
    , O.ShipName
    , O.ShipAddress
FROM
	orders O
JOIN
	`order details` OD ON (OD.OrderID = O.OrderID)
JOIN
	products P ON (OD.ProductID = P.ProductID)
WHERE
	P.ProductName = 'Sasquatch Ale';