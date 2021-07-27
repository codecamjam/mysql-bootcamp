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


/*l 
****************************************************/