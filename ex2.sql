USE bestbuy;
/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT p.Name, c.Name
FROM products p
INNER JOIN categories c
ON p.CategoryID = c.CategoryID
WHERE c.name = 'Computers'; 

-- SELECT Name
-- \/ does not work
-- SELECT *
-- FROM categories c
-- LEFT JOIN products p 
-- ON c.CategoryID = p.CategoryID;

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT *
FROM reviews r
LEFT JOIN products p
ON r.ProductID = p.ProductID
WHERE Rating LIKE "5";

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT *
FROM employees e
INNER JOIN sales s
ON e.EmployeeID = s.EmployeeID
ORDER BY PricePerUnit DESC;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT *
FROM categories;
-- this one\/\/\/
SELECT d.Name, c.Name
FROM categories c
INNER JOIN departments d
ON c.DepartmentID = d.DepartmentID
WHERE c.Name = "Appliances" OR c.Name = "Games";
-- CategoryID LIKE = "%8%";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT *
FROM sales;

SELECT *
FROM products;

SELECT *
FROM sales s
INNER JOIN products p
ON s.ProductID = p.ProductId
ORDER BY Quantity DESC;

SELECT SUM(Quantity * PricePerUNit) AS "SUM"
FROM sales;
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT *
FROM reviews r
LEFT JOIN products p
ON r.ProductID = p.ProductID
WHERE Rating LIKE "1";

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */