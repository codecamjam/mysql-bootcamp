/*l39 inserting data
****************************************************/
show databases;
USE cat_app;
SELECT database();
SHOW TABLES;

CREATE TABLE cats(
  name VARCHAR(50),
  age INT
);

INSERT INTO cats(name, age)
VALUES('Blue', 1);
/* Query OK, 1 row affected (0.01 sec)*/

INSERT INTO cats(name, age)
VALUES('Draco', 11);


/*l41 super quick intro to selects
****************************************************/
SELECT * FROM cats;


/*l43 multiple insert
****************************************************/
INSERT INTO cats(name, age)
VALUES ('Peanut', 2),
       ('Butter', 4),
       ('Jelly', 7);
-- Query OK, 3 rows affected (0.01 sec)
-- Records: 3  Duplicates: 0  Warnings: 0


/*l45 and l147 INSERT challenge
****************************************************/
/* 
Create a people table
first_name 20 char limit,
last_name 20 char limit,
age

Insert 1 at a time:
Tina Belcher 13
Bob Belcher 42

Multiple insert
Linda Belcher 45
Phillip Frond 38
Calvin Fischoeder 70
*/

CREATE TABLE people(
  first_name CHAR(20),
  last_name CHAR(20),
  age INT
);

DESC people;

INSERT INTO people
  (first_name, last_name, age)
VALUES 
  ('Tina', 'Belcher', 13);

INSERT INTO people
  (age, last_name, first_name)
VALUES 
  (42, 'Belcher', 'Bob');

INSERT INTO people
  (first_name, last_name, age)
VALUES 
  ('Linda', 'Belcher', 45),
  ('Phillip', 'Frond', 38),
  ('Calvin', 'Fischoeder', 70);

SELECT * FROM people;
DROP TABLE people;

/*l 
****************************************************/


/*l 
****************************************************/


/*l 
****************************************************/


/*l 
****************************************************/


/*l 
****************************************************/


/*l 
****************************************************/