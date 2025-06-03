SELECT 
	FirstName
    , LastName
    , Title
FROM 
	northwind.employees
WHERE 
	Title LIKE '%manager%'