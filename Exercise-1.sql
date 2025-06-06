/*
1. What categories of products does Northwind Traders sell?
	- Northwind traders sell beverages, condiments, confections, dairy products, grains/cereals, meat/poultry, produce, seafood. Can be found by accessing the category name column.

2. What is the name of a product that sounds interesting to you? 
	- Chocolade. Can be found in the productname column in the products table.

3. What are some of the countries in which we have customers? 
	- Germany, Mexico, UK, Sweden, etc. Can all be found in the country column in the customers table.

4. What date was our first order placed? How did you determine that? 
	- 1996-07-04 00:00:00. I found the order date column in the orders table.

5. What date was our last order placed? 
	- 1998-05-06 00:00:00

6. How many customers do we currently have? 
	- 93 total

7. Do we have any suppliers in South America? Europe? Africa? 
	- South America and Europe only but not Africa.

8. What is our most expensive product?  
	- Cte de Blaye

9. What is our least expensive product? 
	- Geitost

10. We have a customer named "The Big Cheese" if I wanted to get details 
about their last order from us how would you find that information? 
   a. What tables would you use?  
   	- Customer, Orderdetails, Order
   b. How would you link the data in the tables you are using?
   	- Customer ID is used in the orders table. Order ID is used in the order table and is used as a foreign key in order details.
   c. What information might I want to know about their order?           
      i. Order Date? 
           - 1998-04-01
      ii. Sales Total? 
           - $69.60. This is the unitprice * quantity
      iii. Product Name? 
           - Mozzarella di Giovanni
      iv. Is there other information that you might find interesting? 
           - Shipping information, discounts
*/           