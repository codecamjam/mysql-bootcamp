/*l154 char and varchar
*****************************************************/
CREATE TABLE dogs (name CHAR(5), breed VARCHAR(10));
 
INSERT INTO dogs (name, breed) VALUES ('bob', 'beagle');
 
INSERT INTO dogs (name, breed) VALUES ('robby', 'corgi');
 
--ERROR 1406 (22001): Data too long for column 'name' at row 1
INSERT INTO dogs (name, breed) VALUES ('Princess Jane', 'Retriever');
 
SELECT * FROM dogs;
 
INSERT INTO dogs (name, breed) VALUES ('Princess Jane', 'Retrievesadfdsafdasfsafr');
 
SELECT * FROM dogs;


------------------------------------------------------


/*l157 decimal
*****************************************************/
CREATE TABLE items(price DECIMAL(5,2));
 
INSERT INTO items(price) VALUES(7);
 
 --won't be inserted. error out because it's too large
INSERT INTO items(price) VALUES(7987654);
 
INSERT INTO items(price) VALUES(34.88);
 
INSERT INTO items(price) VALUES(298.9999);
 
INSERT INTO items(price) VALUES(1.9999);
 
SELECT * FROM items;


------------------------------------------------------




/*l159 float and double
*****************************************************/

CREATE TABLE thingies (price FLOAT);
 
INSERT INTO thingies(price) VALUES (88.45);
 
SELECT * FROM thingies;
 
INSERT INTO thingies(price) VALUES (8877.45);
 
SELECT * FROM thingies;
 
INSERT INTO thingies(price) VALUES (8877665544.45);
 
SELECT * FROM thingies;

------------------------------------------------------



/*l162 date, time, and datetime AND l163 creating our date data
*****************************************************/
CREATE TABLE people (name VARCHAR(100), birthdate DATE, birthtime TIME, birthdt DATETIME);
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');
 
SELECT * FROM people;



------------------------------------------------------


/*l165 curdate, curtime, and now
*****************************************************/



------------------------------------------------------


/*l167 formatting dates
*****************************************************/



------------------------------------------------------




/*l169 date math
*****************************************************/



------------------------------------------------------


/*l171 working with timestamps
*****************************************************/



------------------------------------------------------


/*l173 data types exercises
*****************************************************/



------------------------------------------------------


/*l
*****************************************************/



------------------------------------------------------


/*l
*****************************************************/



------------------------------------------------------


