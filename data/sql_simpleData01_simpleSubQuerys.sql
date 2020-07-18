
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





















-- REFERENCE

-- [1]https://www.w3resource.com/sql-exercises/subqueries/index.php

