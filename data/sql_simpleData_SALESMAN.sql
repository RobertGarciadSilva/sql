
-- simple dataset saleman_id

DROP DATABASE IF EXISTS sql_simpleData_SALESMAN;
CREATE DATABASE sql_simpleData_SALESMAN;
USE sql_simpleData_SALESMAN;

CREATE TABLE SALESMAN (
salesman_id INT PRIMARY KEY,
name VARCHAR (50) NOT NULL,
city VARCHAR (30),
commission FLOAT 
);

CREATE TABLE ORDERS (
ord_no INT PRIMARY KEY,
purch_amt FLOAT,
ord_date DATE,
customer_id INT,
salesman_id INT,
CONSTRAINT ORDERS_SALESMANiD_FK FOREIGN KEY (salesman_id)
REFERENCES SALESMAN (salesman_id)
);

CREATE TABLE CUSTOMER (
customer_id INT PRIMARY KEY,
cust_name VARCHAR (50),
city VARCHAR (30),
grade INT,
salesman_id INT,
CONSTRAINT CUSTOMER_SALESMANiD_FK FOREIGN KEY (salesman_id)
REFERENCES SALESMAN (salesman_id)
);
 

-- --- INSERT DATA

INSERT INTO SALESMAN 
VALUES
(5001, 'James Hoog', 'New York', 0.15);

INSERT INTO SALESMAN
VALUES
(5002, 'Nail Knite', 'Paris', 0.13);

INSERT INTO SALESMAN
VALUES
(5005, 'Pit Alex', 'London', 0.11);

INSERT INTO SALESMAN
VALUES
(5006, 'Mc Lyon', 'Paris', 0.14);

INSERT INTO SALESMAN
VALUES
(5007, 'Paul Adam', 'Rome', 0.13);

INSERT INTO SALESMAN
VALUES
(5003, 'Lauson Hen', 'San Jose', 0.12);

INSERT INTO ORDERS 
VALUES
(70001, 150.2, '2012-10-05', '3005', 5002);

INSERT INTO ORDERS
VALUES
(70009, 270.65, '2012-09-10', 3001, 5005);

INSERT INTO ORDERS
VALUES
(70002, 65.26, '2012-10-05', 3002, 5001);

INSERT INTO ORDERS
VALUES
(70004, 110.5, '2012-08-17', 3009, 5003);

INSERT INTO ORDERS
VALUES
(70007, 948.5, '2012-09-10', 3005, 5002);

INSERT INTO ORDERS
VALUES
(70005, 2400.6, '2012-07-27', 3007, 5001);

INSERT INTO ORDERS
VALUES
(70008, 5760, '2012-09-10', 3002, 5001);

INSERT INTO ORDERS
VALUES 
(70010, 1983.43, '2012-10-10', 3004, 5006);

INSERT INTO ORDERS
VALUES
(70003, 2480.4, '2012-10-10', 3009, 5003);

INSERT INTO ORDERS
VALUES
(70012, 250.45, '2012-06-27', 3008, 5002);

INSERT INTO ORDERS
VALUES
(70011, 75.29, '2012-06-27', 3008, 5002);

INSERT INTO ORDERS
VALUES
(70013, 3045.6, '2012-04-25', 3002, 5001);
 

-- ---- adicionando uma nova constraint a tabela ORDERS

-- ALTER TABLE ORDERS
-- ADD CONSTRAINT ORDERS_CUSTOMERiD_FK FOREIGN KEY (customer_id)
-- REFERENCES CUSTOMER (customer_id);

-- A CONSTRAINT acima só pode ser executada depois
-- que alguns dados em CUSTOMER serem populados, 
-- em especial os dados já cadastrados em ORDERS;
-- VEJA REFERENCIA EM [2] E OBSERVAÇÕES EM [1]

-- ------- INSERINDO, POPULANDO MAIS VALORES

INSERT INTO CUSTOMER
VALUES
(3002, 'Nick Rimando', 'New York', 100, 5001);

INSERT INTO CUSTOMER
VALUES
(3007, 'Brad Davis', 'New York', 200, 5001);

INSERT INTO CUSTOMER
VALUES
(3005, 'Graham Zusi', 'California', 200, 5002);

INSERT INTO CUSTOMER
VALUES
(3008, 'Julian Green', 'London', 300, 5002);

INSERT INTO CUSTOMER
VALUES
(3004, 'Fabian Johnson', 'Paris', 300, 5006);

INSERT INTO CUSTOMER
VALUES
(3009, 'Geoff Cameron', 'Berlin', 100, 5003);

INSERT INTO CUSTOMER
VALUES
(3003, 'Jozy Altidor', 'Moscow', 200, 5007);

INSERT INTO CUSTOMER
VALUES
(3001, 'Brad Guzan', 'London', NULL ,5005);


-- Nesse ponto podemos executar a ALTER TABLE ADD CONSTRAINT ACIMA

ALTER TABLE ORDERS
ADD CONSTRAINT ORDERS_CUSTOMERiD_FK FOREIGN KEY (customer_id)
REFERENCES CUSTOMER (customer_id);


-- CREATE OTHER TABLE

CREATE TABLE NOBEL_WIN (
year INT,
subject VARCHAR (20),
winner VARCHAR (30),
country VARCHAR (20),
category VARCHAR (20)
);

INSERT INTO NOBEL_WIN 
VALUES
(1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist');

INSERT INTO NOBEL_WIN
VALUES
(1970, 'Physics','Louis Neel','France','Scientist');

INSERT INTO NOBEL_WIN
VALUES
(1970, 'Chemistry','Luis Federico Leloir','France','Scientist');

INSERT INTO NOBEL_WIN
VALUES
(1970,'Physiology','Ulf von Euler','Sweden','Scientist');

INSERT INTO NOBEL_WIN
VALUES
(1970,'Physiology','Bernard Katz','Germany','Scientist');

INSERT INTO NOBEL_WIN
VALUES
(1970,'Literature','Aleksandr Solzhenitsyn','Russia','Linguist');

INSERT INTO NOBEL_WIN
VALUES
(1970,'Economics','Paul Samuelson','USA','Economist');

INSERT INTO NOBEL_WIN
VALUES
(1970, 'Physiology','Julius Axelrod','USA','Scientist');

INSERT INTO NOBEL_WIN
VALUES
(1971, 'Physics','Dennis Gabor','Hungary','Scientist');

INSERT INTO NOBEL_WIN
VALUES
(1971, 'Chemistry','Gerhard Herzberg','Germany','Scientist');

INSERT INTO NOBEL_WIN
VALUES
(1971,'Peace','Willy Brandt','Germany','Chancellor');

INSERT INTO NOBEL_WIN
VALUES
(1971, 'Literature','Pablo Neruda','Chile','Linguist');

INSERT INTO NOBEL_WIN
VALUES
(1971,'Economics','Simon Kuznets','Russia','Economist');

INSERT INTO NOBEL_WIN
VALUES
(1978, 'Peace','Anwar al-Sadat','Egypt','President');

INSERT INTO NOBEL_WIN
VALUES
(1978,'Peace','Menachem Begin','Israel','Prime Minister');

INSERT INTO NOBEL_WIN
VALUES
(1987,'Chemistry','Donald J. Cram','USA','Scientist');

INSERT INTO NOBEL_WIN
VALUES
(1987,'Chemistry','Jean-Marie Lehn','France','Scientist');

INSERT INTO NOBEL_WIN
VALUES
(1987,'Physiology','Susumu Tonegawa','Japan','Scientist');

INSERT INTO NOBEL_WIN
VALUES
(1994,'Economics','Reinhard Selten','Germany','Economist');

INSERT INTO NOBEL_WIN
VALUES
(1994, 'Peace','Yitzhak Rabin','Israel','Prime Minister');

INSERT INTO NOBEL_WIN
VALUES
(1987,'Physics','Johannes Georg Bednorz','Germany','Scientist');

INSERT INTO NOBEL_WIN
VALUES
(1987, 'Literature','Joseph Brodsky','Russia','Linguist');

INSERT INTO NOBEL_WIN
VALUES
(1987,'Economics','Robert Solow','USA','Economist');

INSERT INTO NOBEL_WIN
VALUES
(1994,'Literature','Kenzaburo Oe','Japan','Linguist');




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



-- ------- REFERENCE

-- [1]https://www.w3resource.com/sql-exercises/sql-retrieve-from-table.php
-- [2]https://cursos.alura.com.br/forum/topico-error-1452-a-foreign-key-constraint-fails-54215

-- -------- OBSERVAÇÕES
-- [1]"O que pode estar acontecendo é o seguinte, se a tabela de compras, que vai receber a chave estrangeira, já está com dados, pode ocorrer de algum dado no campo comprador_id não ser compatível com a regra, ou seja, o id informado no campo não existir na tabela de compradores. Neste caso, vai dar erro ao tentar adicionar a chave estrangeira."




