/*l62 intro to crud
*******************************************************/
INSERT INTO cata(name, age)
VALUES('Taco', 14);

/*l
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

/*l
*******************************************************/

--------------------------------------------------------

/*l
*******************************************************/

--------------------------------------------------------

/*l
*******************************************************/

--------------------------------------------------------

/*l
*******************************************************/

--------------------------------------------------------


/*l
*******************************************************/

--------------------------------------------------------


/*l
*******************************************************/

--------------------------------------------------------


/*l
*******************************************************/

--------------------------------------------------------


/*l
*******************************************************/

--------------------------------------------------------


/*l
*******************************************************/

--------------------------------------------------------


/*l
*******************************************************/

--------------------------------------------------------


/*l
*******************************************************/

--------------------------------------------------------

/*l
*******************************************************/

--------------------------------------------------------