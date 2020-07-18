
-- simple dataset
-- Content: Tables -> SALESMAN, ORDERS, CUSTOMER, NOBEL_WIN, ITEM_MAST, EMP_DETAILS

DROP DATABASE IF EXISTS sql_simpleData01;
CREATE DATABASE sql_simpleData01;
USE sql_simpleData01;

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
(70011, 75.29, '2012-08-17', 3003, 5007);

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



-- CREATE OTHER TABLE

CREATE TABLE ITEM_MAST (
pro_id INT PRIMARY KEY,
pro_name VARCHAR (50), 
pro_price FLOAT,
pro_com INT
);

INSERT INTO ITEM_MAST
VALUES
(101, 'Mother Board', 3200, 15);

INSERT INTO ITEM_MAST
VALUES
(102, 'Key Board', 450, 16);

INSERT INTO ITEM_MAST
VALUES
(103, 'ZIP drive', 250, 14);

INSERT INTO ITEM_MAST
VALUES
(104, 'Speaker', 550, 16);

INSERT INTO ITEM_MAST
VALUES
(105, 'Monitor', 5000, 11);

INSERT INTO ITEM_MAST
VALUES
(106, 'DVD drive', 900, 12);

INSERT INTO ITEM_MAST
VALUES
(107, 'CD drive', 800, 12);

INSERT INTO ITEM_MAST
VALUES
(108, 'Printer', 2600, 13);

INSERT INTO ITEM_MAST
VALUES
(109, 'Refill Cartindge', 350, 13);

INSERT INTO ITEM_MAST
VALUES
(110, 'Mouse', 250, 12);

-- CREATE OTHER TABLE

CREATE TABLE EMP_DETAILS (
emp_idno INT PRIMARY KEY,
emp_fname VARCHAR (30),
emp_lname VARCHAR (30),
emp_dept INT
);

INSERT INTO EMP_DETAILS
VALUES
(127323, 'Michale', 'Robbin', 57);

INSERT INTO EMP_DETAILS
VALUES
(526689, 'Carlos', 'Snares', 63);

INSERT INTO EMP_DETAILS
VALUES
(843795, 'Enric', 'Dosio', 57);

INSERT INTO EMP_DETAILS
VALUES
(328717, 'Jhon', 'Snares', 63);

INSERT INTO EMP_DETAILS
VALUES
(444527, 'Joseph', 'Dosni', 47);

INSERT INTO EMP_DETAILS
VALUES
(659831, 'Zanifer', 'Emily', 47);

INSERT INTO EMP_DETAILS
VALUES
(847674, 'Kuleswar', 'Sitaraman', 57);

INSERT INTO EMP_DETAILS
VALUES
(748681, 'Henrey', 'Gabriel', 47);

INSERT INTO EMP_DETAILS
VALUES
(555935, 'Alex', 'Manuel', 57);

INSERT INTO EMP_DETAILS
VALUES
(539569, 'George', 'Mardy', 27);

INSERT INTO EMP_DETAILS
VALUES
(733843, 'Mario', 'Saule', 63);

INSERT INTO EMP_DETAILS
VALUES
(631548, 'Alan', 'Snappy', 27);

INSERT INTO EMP_DETAILS
VALUES
(839139, 'Maria', 'Foster', 57);





-- ------- REFERENCE

-- [1]https://www.w3resource.com/sql-exercises/sql-retrieve-from-table.php
-- [2]https://cursos.alura.com.br/forum/topico-error-1452-a-foreign-key-constraint-fails-54215

-- -------- OBSERVAÇÕES
-- [1]"O que pode estar acontecendo é o seguinte, se a tabela de compras, que vai receber a chave estrangeira, já está com dados, pode ocorrer de algum dado no campo comprador_id não ser compatível com a regra, ou seja, o id informado no campo não existir na tabela de compradores. Neste caso, vai dar erro ao tentar adicionar a chave estrangeira."




