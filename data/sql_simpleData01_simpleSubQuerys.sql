
-- SIMPLE SUBQUERYS BASED ON DATA 'sql_simpleData01'
-- TABLES: SALESMAN, ORDERS, CUSTOMER, NOBEL_WIN, ITEM_MAST, EMP_DETAILS


-- 1. Write a query to display all the orders from the orders table issued by the salesman 'Paul Adam'.

SELECT * FROM ORDERS
WHERE salesman_id = 
(SELECT salesman_id FROM SALESMAN WHERE name = 'Paul Adam');


-- 2. Write a query to display all the orders for the salesman who belongs to the city London. 
SELECT * FROM ORDERS
WHERE salesman_id =
(SELECT salesman_id FROM SALESMAN WHERE city = 'London');


-- 3. Write a query to find all the orders issued against the salesman who may works for customer whose id is 3007. 

SELECT * FROM ORDERS
WHERE salesman_id = 
(SELECT salesman_id FROM ORDERS WHERE customer_id = 3007); 

-- 4. Write a query to display all the orders which values are greater than the average order value for 10th October 2012.

SELECT * FROM ORDERS 
WHERE purch_amt > 
(SELECT AVG(purch_amt) FROM ORDERS 
WHERE ord_date = '2012-10-10');


-- 5. Write a query to find all orders attributed to a salesman in New york.

SELECT * FROM ORDERS
WHERE 
salesman_id IN
(SELECT salesman_id FROM SALESMAN WHERE city = 'New York');

-- 6. Write a query to display the commission of all the salesmen servicing customers in Paris.

SELECT commission FROM SALESMAN 
WHERE salesman_id IN
(SELECT salesman_id FROM CUSTOMER WHERE city = 'Paris');


-- 7. Write a query to display all the customers whose id is 2001 bellow the salesman ID of Mc Lyon

SELECT * FROM CUSTOMER
WHERE customer_id =
((SELECT salesman_id FROM SALESMAN WHERE name = 'Mc Lyon') - 2001);

SELECT * FROM CUSTOMER
WHERE customer_id = 
(SELECT salesman_id - 2001 FROM SALESMAN WHERE name = 'Mc Lyon');

-- 8. Write a query to count the customers with grades above New York's average.

SELECT COUNT(customer_id) FROM CUSTOMER
WHERE grade > 
(SELECT AVG(grade) FROM CUSTOMER WHERE city = 'New York');

SELECT grade, COUNT(customer_id) FROM CUSTOMER
WHERE grade > 
(SELECT AVG(grade) FROM CUSTOMER WHERE city = 'New York') GROUP BY grade;


SELECT grade, COUNT(*) FROM CUSTOMER GROUP BY grade
HAVING -- USADO NO LUGAR DE WHERE QUANDO TEM-SE VALORES AGRUPADOS
grade > 
(SELECT AVG(grade) FROM CUSTOMER WHERE city = 'New York');


-- WHERE: USADO PARA VERIFICAÇÃO LINHA POR LINHA
-- HAVING: USADO PARA VERIFICAÇÃO DE VALORES AGRUPADOS

-- 9.  Write a query to extract the data from the orders table for those salesman who earned the maximum commission

SELECT * FROM ORDERS
WHERE salesman_id IN
(SELECT salesman_id FROM SALESMAN
WHERE commission = (SELECT MAX(commisSion) FROM SALESMAN)); 

-- 10. Write a query to display all the customers with orders issued on date 17th August, 2012.

SELECT * FROM CUSTOMER
WHERE customer_id IN
(SELECT customer_id FROM ORDERS WHERE ord_date = '2012-08-17');
		
SELECT cust.* FROM CUSTOMER AS cust, ORDERS AS ord
WHERE
cust.customer_id = ord.customer_id AND
ord.ord_date = '2012-08-17';

-- 11. Write a query to find the name and numbers of all salesmen who had more than one customer.



-- QUERY nome salesman e seu número de customers, número de customers maior que 1
SELECT name, COUNT(sal.salesman_id) AS numero_clientes FROM SALESMAN AS sal, CUSTOMER AS cust 
WHERE sal.salesman_id = cust.salesman_id GROUP BY name HAVING numero_clientes > 1;

-- QUERY nome salesman e seu número de customers
SELECT name, COUNT(sal.salesman_id) AS 'Número clientes' FROM SALESMAN AS sal, CUSTOMER as cust
WHERE sal.salesman_id = cust.salesman_id GROUP BY sal.salesman_id; -- or GROUP BY name

SELECT salesman_id, name FROM SALESMAN AS sal
WHERE 1 <
(SELECT COUNT(*) FROM CUSTOMER WHERE salesman_id = sal.salesman_id);




-- 12. Write a query to find all orders with order amounts which are above-average amounts for their customers. 

SELECT ord_no, purch_amt, cust.cust_name FROM ORDERS AS ord, CUSTOMER AS cust WHERE
purch_amt >
(SELECT AVG(purch_amt) FROM ORDERS 
WHERE customer_id = cust.customer_id) AND
cust.customer_id = ord.customer_id;

SELECT * FROM ORDERS AS ord1 WHERE 
purch_amt >
(SELECT AVG(purch_amt) FROM ORDERS AS ord2 WHERE ord2.customer_id = ord1.customer_id);

SELECT customer_id, AVG(purch_amt) FROM ORDERS GROUP BY customer_id;

-- 13. Write a queries to find all orders with order amounts which are on or above-average amounts for their customers.

SELECT * FROM ORDERS AS ord1
WHERE purch_amt >=
(SELECT AVG(purch_amt) FROM ORDERS AS ord2 WHERE ord2.customer_id = ord1.customer_id); 


-- 14. Write a query to find the sums of the amounts from the orders table, grouped by date, eliminating all those dates where the sum was not at least 1000.00 above the maximum order amount for that date.

SELECT ord_date, SUM(purch_amt) soma_date FROM ORDERS AS ord1 GROUP BY ord_date
HAVING soma_date > (
(SELECT MAX(purch_amt) FROM ORDERS AS ord2 WHERE ord2.ord_date = ord1.ord_date)
+ 1000);


SELECT ord_date, SUM(purch_amt) soma_date FROM ORDERS GROUP BY ord_date;


-- REFERENCE

-- [1]https://www.w3resource.com/sql-exercises/subqueries/index.php

