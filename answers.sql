USE salesdb;
-- ### **Question 1 🧑‍💼**  **Write an SQL query** to get the **firstName**, **lastName**, **email**, and **officeCode** of all employees.  
-- Use an **INNER JOIN** to combine the **employees** table with the **offices** table using the **officeCode** column.
SELECT
	emp.firstName, emp.lastName, emp.email, o.officeCode
FROM employees emp
INNER JOIN offices o ON emp.officeCode = o.officeCode;

-- ### **Question 2 🛍️**  
-- **Write an SQL query** to get the **productName**, **productVendor**, and **productLine** from the **products** table.  
-- Use a **LEFT JOIN** to combine the **products** table with the **productlines** table using the **productLine** column.
SELECT 
	prd.productName, prd.productVendor, pl.productLine
FROM products prd 
LEFT JOIN productLines pl ON prd.productLine = pl.productline ;

-- ### **Question 3 📦**  
-- **Write an SQL query** to retrieve the **orderDate**, **shippedDate**, **status**, and **customerNumber** for the first 10 orders.  
-- Use a **RIGHT JOIN** to combine the **customers** table with the **orders** table using the **customerNumber** column.
SELECT
	od.orderDate, od.shippedDate, od.status, od.customerNumber
FROM customers ct
right join orders od ON ct.customerNumber = od.customerNumber 
limit 10;