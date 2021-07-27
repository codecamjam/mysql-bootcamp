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

-----------------------------------------------------

/*l41 super quick intro to selects
****************************************************/
SELECT * FROM cats;

-----------------------------------------------------

/*l43 multiple insert
****************************************************/
INSERT INTO cats(name, age)
VALUES ('Peanut', 2),
       ('Butter', 4),
       ('Jelly', 7);
-- Query OK, 3 rows affected (0.01 sec)
-- Records: 3  Duplicates: 0  Warnings: 0

-----------------------------------------------------

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

-----------------------------------------------------

/*l50 warnings
In the lecture Colt will introduce warnings in MySQL.
If you happen to encounter an error instead of a warning then please see here for a discussion in the Q&A that covers what's happening there.
The solution is to run the following command in your mysql shell: set sql_mode='';
Thanks!
Ian
****************************************************/
INSERT INTO cats(name, age)
VALUES (
  'This cat is named Charlie which is also a human name. In fact I know a couple of Charlies. Fun fact',
  10
);
SHOW WARNINGS;
-- I have to use the show warnings command immediately or it will not work.
-- Once you type a new command the warnings are removed from the buffer. They might be in a log, but that depends upon setup.

INSERT INTO cats(name, age)
VALUES (
  'Lima',  'fsdfsdfsfsdfsdfsdfsdf'
);
-- Warning | 1366 | Incorrect integer value: 'fsdfsdfsfsdfsdfsdfsdf' for column 'age' at row 1

-----------------------------------------------------

/*l52 null and not null
****************************************************/
INSERT INTO cats(name) VALUES('Alabama');
-- | This cat is named Charlie which is also a human na |   10 |
-- | Lima                                               |    0 |
-- | Alabama                                            | NULL |

DESC cats;
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | name  | varchar(50) | YES  |     | NULL    |       |
-- | age   | int         | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+

INSERT INTO cats() VALUES();
-- | NULL| NULL |

CREATE TABLE cats2(
  name VARCHAR(100) NOT NULL,
  age INT NOT NULL
);

DESC cats2;
-- | Field | Type         | Null | Key | Default | Extra |
-- +-------+--------------+------+-----+---------+-------+
-- | name  | varchar(100) | NO   |     | NULL    |       |
-- | age   | int          | NO   |     | NULL    |       |
-- +-------+--------------+------+-----+---------+-------+

INSERT INTO cats2(name)
VALUES('Texas');
-- Query OK, 1 row affected, 1 warning (0.01 sec)
SHOW WARNINGS;
-- | Warning | 1364 | Field 'age' doesn't have a default value |

SELECT * FROM cats2;
-- +-------+-----+
-- | name  | age |
-- +-------+-----+
-- | Texas |   0 |
-- +-------+-----+

INSERT INTO cats2(age) VALUES(7);
SHOW WARNINGS;
-- | Warning | 1364 | Field 'name' doesn't have a default value |

SELECT * FROM cats2;
-- +-------+-----+
-- | name  | age |
-- +-------+-----+
-- | Texas |   0 |
-- |       |   7 |
-- +-------+-----+

-----------------------------------------------------

/*l 54 setting default vals
****************************************************/
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | name  | varchar(50) | YES  |     | NULL    |       |
-- | age   | int         | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+

CREATE TABLE cats3(
  name VARCHAR(20) DEFAULT 'no name provided',
  age INT DEFAULT 99
);

DESC cats3;
-- | name  | varchar(20) | YES  |     | no name provided |       |
-- | age   | int         | YES  |     | 99               |       |

INSERT INTO cats3(age) VALUES(13);

CREATE TABLE cats4(
  name VARCHAR(100) NOT NULL DEFAULT 'unnamed',
  age INT NOT NULL DEFAULT 99
);

DESC cats4;
-- | name  | varchar(100) | NO   |     | unnamed |       |
-- | age   | int          | NO   |     | 99      |       |
-- +-------+--------------+------+-----+---------+-------+

INSERT INTO cats4(name, age)
VALUE('Cali', NULL);
-- ERROR 1048 (23000): Column 'age' cannot be null

-----------------------------------------------------

/*l56 primer on primary keys
****************************************************/
---without primary keys, we can insert duplicates
CREATE TABLE unique_cats (
  cat_id INT NOT NULL,
  name VARCHAR(100),
  age INT,
  PRIMARY KEY (cat_id)
);

DESC unique_cats;
-- +--------+--------------+------+-----+---------+-------+
-- | Field  | Type         | Null | Key | Default | Extra |
-- +--------+--------------+------+-----+---------+-------+
-- | cat_id | int          | NO   | PRI | NULL    |       |
-- | name   | varchar(100) | YES  |     | NULL    |       |
-- | age    | int          | YES  |     | NULL    |       |
-- +--------+--------------+------+-----+---------+-------+

INSERT INTO unique_cats(cat_id, name, age)
VALUES(1, 'FRED', 23);

INSERT INTO unique_cats(cat_id, name, age)
VALUES(2, 'LOUIS', 3);

SELECT * FROM unique_cats;
-- +--------+-------+------+
-- | cat_id | name  | age  |
-- +--------+-------+------+
-- |      1 | FRED  |   23 |
-- |      2 | LOUIS |    3 |
-- +--------+-------+------+

CREATE TABLE unique_cats2 (
  cat_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100),
  age INT,
  PRIMARY KEY (cat_id)
);

DESC unique_cats2;
-- +--------+--------------+------+-----+---------+----------------+
-- | Field  | Type         | Null | Key | Default | Extra          |
-- +--------+--------------+------+-----+---------+----------------+
-- | cat_id | int          | NO   | PRI | NULL    | auto_increment |
-- | name   | varchar(100) | YES  |     | NULL    |                |
-- | age    | int          | YES  |     | NULL    |                |
-- +--------+--------------+------+-----+---------+----------------+

INSERT INTO unique_cats2(name, age)
VALUES('Skippy', 4);

INSERT INTO unique_cats2(name, age)
VALUES('Jif', 3);

INSERT INTO unique_cats2(name, age)
VALUES('Jif', 3);

SELECT * FROM unique_cats2;
-- +--------+--------+------+
-- | cat_id | name   | age  |
-- +--------+--------+------+
-- |      1 | Skippy |    4 |
-- |      2 | Jif    |    3 |
-- |      3 | Jif    |    3 |
-- +--------+--------+------+

/*l58 table constraints ex
****************************************************/
/*
define an employees table with the following fields:
id - number (auto increment) mandatory primary key
last_name - text, mandatory
first_name - text mandatory
middle_name - text, not mand
age - number mand
current_status - text, mandatory, defaults to employed
*/
CREATE TABLE employees(
  employee_id INT NOT NULL AUTO_INCREMENT,
  ---can also include PRIMARY KEY after AUTO_INCREMENT
  last_name VARCHAR(50) NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  middle_name VARCHAR(50),
  age INT NOT NULL,
  current_status VARCHAR(50) NOT NULL DEFAULT 'employed',
  PRIMARY KEY (employee_id)
);

INSERT into employees(
  last_name, first_name, middle_name, age, current_status
)
VALUES 
('Taghlabi', 'Cameron', 'Jam', 34, 'looking'),
('Jarczyk', 'Ashton', 'Drake', 23, 'part-time');


/*l 
****************************************************/