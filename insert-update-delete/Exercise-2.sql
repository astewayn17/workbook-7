-- 1. Add a new supplier. 
INSERT INTO suppliers
VALUES (NULL, "Asteway Inc", "Asteway", "Sales Agent", "102 King St", "Dallas", "TX", "75055", "USA", "(469) 258-7067", NULL, NULL);

-- 2. Add a new product provided by that supplier.
SELECT SupplierID INTO @AstewayID 
FROM suppliers 
WHERE CompanyName = 'Asteway Inc';

INSERT INTO products
VALUES (NULL, "Sweet Cheese", @AstewayID, 4, "10 Slices", 4, 55, 25, 10, 0);

-- 3. List all products and their suppliers. 
SELECT
	P.ProductName
    , S.ContactName AS 'Suppliers'
FROM
	products P
JOIN
	suppliers S ON (S.SupplierID = P.SupplierID); 

-- 4. Raise the price of your new product by 15%. 
UPDATE products
SET UnitPrice = 1.15 * UnitPrice
WHERE ProductID = 79;

-- 5. List the products and prices of all products from that supplier. 
SELECT
    P.ProductName
    , P.UnitPrice
FROM
    products P
JOIN
    suppliers S ON P.SupplierID = S.SupplierID
WHERE
    S.CompanyName = 'Asteway Inc';

-- 6. Delete the new product. 
DELETE FROM products
WHERE ProductID = 79;

-- 7. Delete the new supplier. 
DELETE FROM suppliers
WHERE SupplierID = @AstewayID;

-- 8. List all products. 
SELECT ProductName
FROM products;

-- 9. List all suppliers. 
SELECT ContactName AS Suppliers
FROM suppliers;