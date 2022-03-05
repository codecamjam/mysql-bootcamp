/*l199 real world data is messy
*****************************************************/
--just slides
------------------------------------------------------

/*l200 types of data relationships
*****************************************************/
--just slides
------------------------------------------------------

/*l201 one to many: the basics
*****************************************************/
--just slides
------------------------------------------------------

/*l202 working with foreign keys
*****************************************************/
create database bizSec12;
use bizSec12;

CREATE TABLE customers(
	id INT AUTO_INCREMENT PRIMARY KEY,
	fist_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100)
);

ALTER TABLE customers 
RENAME COLUMN fist_name TO first_name;

CREATE TABLE orders(
	id INT AUTO_INCREMENT PRIMARY KEY,
	order_date DATE,
	amount DECIMAL(8,2),
	customer_id INT,
	FOREIGN KEY(customer_id) REFERENCES customers(id)
);

INSERT INTO customers(first_name,last_name,email)
VALUES 
('Boy','George','george@gmail.com'),
('George', 'Michael' ,'gm@gmail.com'),
('David','Bowie','david@gmail.com'),
('Blue','Steele','blue@gmail.com'),
('Bette', 'Davis', 'bette@aol.com');



INSERT INTO orders(order_date,amount,customer_id)
VALUES 
('2016/02/10', 99.99, 1),
('2017/11/11',35.50, 1),
('2014/12/12', 800.67, 2),
('2015/01/03', 12.50, 2),
('1999/04/11', 450.25, 5);

------------------------------------------------------


/*l204 cross join
*****************************************************/
-- Finding Orders Placed By George: 2 Step Process

SELECT id FROM customers WHERE last_name='George';
SELECT * FROM orders WHERE customer_id = 1;
-- Finding Orders Placed By George: Using a subquery

SELECT * FROM orders WHERE customer_id =
    (
        SELECT id FROM customers
        WHERE last_name='George'
    );
-- Cross Join Craziness

SELECT * FROM customers, orders; 


------------------------------------------------------


/*l206 inner join
*****************************************************/



------------------------------------------------------


/*l208 left join
*****************************************************/



------------------------------------------------------


/*l210 right joins PT 1
*****************************************************/



------------------------------------------------------


/*l212 right joins PT 2
*****************************************************/



------------------------------------------------------


/*l214 Right and Left Joins: a common question
*****************************************************/



------------------------------------------------------


/*l216 our first joins exercise
*****************************************************/



------------------------------------------------------


/*l219 or first joins exercises PT 2
*****************************************************/



------------------------------------------------------


/*l
*****************************************************/



------------------------------------------------------


/*l
*****************************************************/



------------------------------------------------------

