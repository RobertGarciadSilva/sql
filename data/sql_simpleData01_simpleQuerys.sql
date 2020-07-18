
-- SIMPLE QUERYS BASED ON DATA 'sql_simpleData01'
-- TABLES: SALESMAN, ORDERS, CUSTOMER, NOBEL_WIN, ITEM_MAST, EMP_DETAILS

-- ---- SIMPLE QUERYS/ EXERCICES

-- 1. Write a SQL statement to display all the information of all salesmen.
-- SELECT * FROM SALESMAN;

-- 2. Write a SQL statement to display a string "This is SQL Exercise, Practice and Solution".
-- SELECT "This is SQL EXERCICE, Practice and Solution";

-- 3. Write a query to display three numbers in three columns.
-- SELECT 5,10,15;

-- 4. Write a query to display sum of two numbers 10 and 15.
-- SELECT 5 + 10;

-- 5. Write a query to display the result of an arithmetic expression.
-- SELECT 5*2 + 4 - 2 + 10/2;

-- 6. Write a SQL statement to display specific columns like name and commission for all the salesmen.
-- SELECT name, commission FROM SALESMAN;


-- 7. Write a query to display the columns in a specific order like order date, salesman id, order number and purchase amount from for all the orders.
-- SELECT ord_date, salesman_id, ord_no, purch_amt FROM ORDERS;

-- 8. Write a query which will retrieve the values of salesman id of all salesmen getting orders from the customers in orders table without any repeats.
-- SELECT DISTINCT salesman_id FROM ORDERS;


-- 9. Write a SQL statement to display names and city of salesman, who belongs to the city of Paris.
-- SELECT name, city FROM SALESMAN
-- WHERE city = 'Paris';

-- 10. Write a SQL statement to display all the information for those customers with a grade of 200.
-- SELECT * FROM CUSTOMER
-- WHERE grade = 200;

-- 11. Write a SQL query to display the order number followed by order date and the purchase amount for each order which will be delivered by the salesman who is holding the ID 5001.
-- SELECT ord_date, purch_amt FROM ORDERS
-- WHERE salesman_id = 5001;

-- 12. Write a SQL query to display the Nobel prizes for 1970.
-- SELECT * FROM NOBEL_WIN
-- WHERE year = 1970;


-- 13. Write a SQL query to know the winner of the 1971 prize for Literature.
-- SELECT * FROM NOBEL_WIN
-- WHERE year = 1971 AND category = 'Literature';


-- 14. Write a SQL query to display the year and subject that won 'Dennis Gabor' his prize.
-- SELECT year, subject FROM NOBEL_WIN
-- WHERE winner = 'Dennis Gabor';

-- 15. Write a SQL query to give the name of the 'Physics' winners since the year 1950.  
-- SELECT winner FROM NOBEL_WIN
-- WHERE subject = 'Physics' AND year >= 1950;

-- 16. Write a SQL query to Show all the details (year, subject, winner, country ) of the Chemistry prize winners between the year 1965 to 1975 inclusive.
-- SELECT year, subject, winner, country FROM NOBEL_WIN
-- WHERE 
-- subject = 'Chemistry' AND year >= 1965 AND year <= 1975;

-- 17.Write a SQL query to show all details of the Prime Ministerial winners after 1972 of Menachem Begin and Yitzhak Rabin. 
-- SELECT * FROM NOBEL_WIN
-- WHERE
-- year > 1972 AND
-- winner = 'Menachem Begin' OR winner = 'Yitzhak Rabin';

-- SELECT * FROM NOBEL_WIN
-- WHERE year > 1972 AND
-- winner IN ('Menachem Begin', 'Yitzhak Rabin');


-- 18. Write a SQL query to show all the details of the winners with first name Louis.
-- SELECT * FROM NOBEL_WIN
-- WHERE
-- winner LIKE 'Louis%';

-- 19. Write a SQL query to show all the winners in Physics for 1970 together with the winner of Economics for 1971.
-- SELECT * FROM NOBEL_WIN
-- WHERE
-- (subject = 'Physics' AND year = 1970) OR
-- (subject = 'Economics' AND year = 1971);

-- SELECT * FROM NOBEL_WIN WHERE (subject='Physics' AND year=1970)
-- UNION
-- SELECT * FROM NOBEL_WIN WHERE (subject='Economics' AND year=1971);


-- 20. Write a SQL query to show all the winners of nobel prize in the year 1970 except the subject Physiology and Economics.
-- SELECT * FROM NOBEL_WIN
-- WHERE
-- subject NOT IN ('Physiology','Economics');


-- 21. Write a SQL query to show the winners of a 'Physiology' prize in an early year before 1971 together with winners of a 'Peace' prize in a later year on and after the 1974.

-- SELECT * FROM NOBEL_WIN WHERE (subject='Physiology' AND year = 1971-1)
-- UNION
-- SELECT * FROM NOBEL_WIN WHERE (subject='Peace' AND year >= 1974);


-- 22. Write a SQL query to find all details of the prize won by Johannes Georg Bednorz.
-- SELECT * FROM NOBEL_WIN
-- WHERE
-- winner = 'Johannes Georg Bednorz';

-- SELECT * FROM NOBEL_WIN
-- WHERE
-- winner IN ('Johannes Georg Bednorz');


-- 23. Write a SQL query to find all the details of the nobel winners for the subject not started with the letter 'P' and arranged the list as the most recent comes first, then by name in order.
-- SELECT * FROM NOBEL_WIN
-- WHERE
-- subject NOT LIKE 'P%' ORDER BY year DESC, winner;


-- 24. Write a SQL query to find all the details of 1970 winners by the ordered to subject and winner name; but the list contain the subject Economics and Chemistry at last. 
-- SELECT * FROM NOBEL_WIN
-- WHERE
-- year = 1970
-- ORDER BY 
-- 	CASE 
-- 		WHEN subject IN ('Economics','Chemistry') THEN 1
-- 		ELSE 0
--  END ASC,
-- subject, winner;



-- 25. Write a SQL query to find all the products with a price between Rs.200 and Rs.600. 

-- SELECT * FROM ITEM_MAST
-- WHERE
-- pro_price >= 200 AND pro_price <= 600;


-- 26. Write a SQL query to calculate the average price of all products of the manufacturer which code is 16. 

-- SELECT AVG(pro_price) FROM ITEM_MAST
-- WHERE
-- pro_com = 16;


-- 27. Write a SQL query to find the item name and price in Rs.
-- SELECT pro_name AS 'Item name', pro_price AS 'Price in Rs' 
-- FROM ITEM_MAST;


-- 28. Write a SQL query to display the name and price of all the items with a price is equal or more than Rs.250, and the list contain the larger price first and then by name in ascending order.
-- SELECT pro_name, pro_price FROM ITEM_MAST
-- WHERE
-- pro_price >= 250 ORDER BY pro_price DESC, pro_name ASC;

-- 29. Write a SQL query to display the average price of the items for each company, showing only the company code.
-- SELECT pro_com, AVG(pro_price) FROM ITEM_MAST GROUP BY pro_com;

-- SELECT pro_com AS 'COMPANY', AVG(pro_price) AVG_MEAN
-- FROM ITEM_MAST GROUP BY pro_com ORDER BY AVG_MEAN DESC;


-- 30. Write a SQL query to find the name and price of the cheapest item(s). 
-- SELECT pro_name, pro_price FROM ITEM_MAST
-- WHERE pro_price = 
-- (SELECT MIN(pro_price) FROM ITEM_MAST);


-- 31. Write a query in SQL to find the last name of all employees, without duplicates. 

-- SELECT DISTINCT emp_lname FROM EMP_DETAILS;

-- SELECT 
-- COUNT(emp_lname) AS 'Count last names', 
-- COUNT(DISTINCT emp_lname) AS 'Count distinct last names' 
-- FROM EMP_DETAILS;

-- SELECT COUNT(DISTINCT emp_lname) FROM EMP_DETAILS;


-- 32. Write a query in SQL to find the data of employees whose last name is 'Snares'. 
-- SELECT * FROM EMP_DETAILS
-- WHERE
-- emp_lname = 'Snares';

-- 33. Write a query in SQL to display all the data of employees that work in the department 57.
-- SELECT * FROM EMP_DETAILS
-- WHERE
-- emp_dept = 57;








-- ------- REFERENCE

-- [1]https://www.w3resource.com/sql-exercises/sql-retrieve-from-table.php



