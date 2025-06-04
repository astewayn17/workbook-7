-- #1
SELECT 
	UnitPrice
    , ProductName
FROM 
	northwind.products
WHERE 
	UnitPrice = (SELECT MAX(UnitPrice)
				 FROM northwind.products);

-- #2				
SELECT
	OrderID
    , ShipName
    , ShipAddress
FROM
	northwind.orders
WHERE
	ShipVia = (SELECT ShipperID
			   FROM northwind.shippers
			   WHERE CompanyName LIKE '%Federal Shipping%');

-- #3
SELECT
	OrderID
FROM
	northwind.`order details`
WHERE
	ProductID = (SELECT ProductID
			     FROM northwind.products
			     WHERE ProductName LIKE '%Sasquatch Ale%');
    
-- #4
SELECT
	FirstName
    , LastName
FROM
	northwind.employees
WHERE
	EmployeeID = (SELECT EmployeeID
				  FROM northwind.orders
				  WHERE OrderID = 10266);
                  
-- #5
SELECT
	ContactName
FROM
	northwind.customers
WHERE
	CustomerID = (SELECT CustomerID
				  FROM northwind.orders
				  WHERE OrderID = 10266);