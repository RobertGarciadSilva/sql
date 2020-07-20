
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
WHERE sal.salesman_id = cust.salesman_id GROUP BY name;


-- 12. Write a query to find all orders with order amounts which are above-average amounts for their customers. 












-- REFERENCE

-- [1]https://www.w3resource.com/sql-exercises/subqueries/index.php

