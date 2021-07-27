/*l19 ****************************************************/
show databases;
CREATE DATABASE hello_world_db;


/*l21 ****************************************************/
DROP DATABASE hello_world_db;
show databases;


/*l23 ****************************************************/
CREATE DATABASE dog_walking_app;
USE dog_walking_app;
SELECT database();
DROP DATABASE dog_walking_app;
show databases;
SELECT database();


/*l25 tables ****************************************************/
/* COLUMNS - headers 
   ROWS - data
*/

/*l26 data types ****************************************************/
/*varchar(100) - must specify <= length, and max is 255 */

/*l30 creating tables ****************************************************/
CREATE DATABASE cat_app;
USE cat_app;

CREATE TABLE cats (
  name VARCHAR(100),
  age INT
);

/*l32 how we know it worked ****************************************************/
SHOW TABLES;
SHOW COLUMNS FROM cats;
DESC cats; /*not same as show columns from but in this context, its the same */

/*l34 drop tables ****************************************************/
DROP TABLE cats;

/*l ****************************************************/


/*l ****************************************************/
/*l ****************************************************/
