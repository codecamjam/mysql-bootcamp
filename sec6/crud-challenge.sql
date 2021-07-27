/*l89 CRUD CHALLENGE:
SPRING CLEANING 
Annual closet inventory
*/

-- create db shirts_db
CREATE DATABASE shirts_db;
USE shirts_db;
SELECT database();

-- create new table shirts
CREATE TABLE shirts(
  shirt_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  article VARCHAR(20),
  color VARCHAR(20),
  shirt_size VARCHAR(5),
  last_worn INT 
);

-- Get all data with single cmd
INSERT INTO shirts
  (article, color, shirt_size, last_worn)
VALUES
  ('t-shirt', 'white', 'S', 10),
  ('t-shirt', 'green', 'S', 200),
  ('polo shirt', 'black', 'M', 10),
  ('tank top', 'blue', 'S', 50),
  ('t-shirt', 'pink', 'S', 0),
  ('polo shirt', 'red', 'M', 5),
  ('tank top', 'white', 'S', 200),
  ('tank top', 'blue', 'M', 15);


-- Add new purple polo shirt, size M last worn 50 days ago
INSERT INTO shirts 
  (color, article, shirt_size, last_worn)
VALUES
  ('purple', 'polo shirt', 'M', 50);

-- Select all shirts but only print out article and color
SELECT article, color FROM shirts;

-- Select all med shirts, print out all but shirt_id
SELECT article, shirt_size, color, last_worn 
FROM shirts
WHERE shirt_size = 'M';

-- update all polo shirts to size L
UPDATE shirts SET shirt_size = 'L'
WHERE article='polo shirt';

-- update shirt last worn 15 days ago to 0
UPDATE shirts SET last_worn = 0
WHERE last_worn = 15;

-- update all white shirts: change size to XS and color to 'off white;
UPDATE shirts SET shirt_size = 'XS', color='off white'
WHERE color='white';

-- delete all old shorts worn 200 days ago
DELETE FROM shirts
WHERE last_worn = 200;

-- delete all shirts where shirt = tank top
DELETE FROM shirts
WHERE article = 'tank top';

-- delete all shirts
DELETE FROM SHIRTS;

-- drop shirts table
DROP TABLE shirts;

