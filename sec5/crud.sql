/*l62 intro to crud
*******************************************************/
INSERT INTO cats(name, age)
VALUES('Taco', 14);

-------------------------------------------------------

/*l64 prep data
*******************************************************/
DROP TABLE cats;

CREATE TABLE cats(
  cat_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100),
  breed VARCHAR(100),
  age INT, 
  PRIMARY KEY (cat_id)
);

DESC cats;

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

--------------------------------------------------------

/*l66 select
*******************************************************/
SELECT * FROM cats;

SELECT name FROM cats;
SELECT age FROM cats;
SELECT name, age FROM cats;
SELECT cat_id, name, age FROM cats;

--------------------------------------------------------

/*l68 where
*******************************************************/

SELECT * FROM cats 
WHERE age = 4;

SELECT * FROM cats 
WHERE name = 'Egg';
---by default, case insensitive so EGG/egg would still work

--------------------------------------------------------

/*70 select challenge
*******************************************************/
SELECT cat_id FROM cats;
SELECT name, breed FROM cats;
SELECT name, age FROM cats WHERE breed = 'tabby';
SELECT cat_id, age FROM cats WHERE cat_id = age;
SELECT * FROM cats WHERE cat_id=age;

--------------------------------------------------------

/*l73 aliases
*******************************************************/
SELECT cat_id AS id, name FROM cats;

SELECT name AS 'cat name', breed AS 'kitty breed' FROM cats;
 
DESC cats;

--------------------------------------------------------

/*l75 update TIP: TRY SELECTING BEFORE YOU UPDATE!!!!!
*******************************************************/
UPDATE cats SET breed='Shorthair' 
WHERE breed='Tabby';

UPDATE cats SET age=14 
WHERE name='Misty';

--------------------------------------------------------


/*l77 update challenge
*******************************************************/
UPDATE cats SET name='Jack'
WHERE name='jackson';

UPDATE cats SET breed='British Shorthair'
WHERE name='Ringo';

UPDATE cats SET age=12
WHERE breed='maine coon';

-- UPDATE cat SET age=12 would update all cat ages to 12

--------------------------------------------------------

/*l80 delete TIP: RUN SELECT BEFORE DELETING ANYTHING!
*******************************************************/
SELECT FROM cats WHERE name='Egg';
DELETE FROM cats WHERE name='Egg';

--this would delete all rows in the table
DELETE FROM cats;

--------------------------------------------------------

/*l82 delete challenge
*******************************************************/

DELETE FROM cats WHERE age = 4;
DELETE FROM cats WHERE age = cat_id;
DELETE FROM cats;

--------------------------------------------------------

