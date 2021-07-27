/*l99 loading book data
*****************************************************/
source book_data.sql;


------------------------------------------------------

/*l101 concat - combine data for cleaner output
*****************************************************/
SELECT CONCAT('Hello', 'World');
 
SELECT CONCAT('Hello', '...', 'World');
 
SELECT
  CONCAT(author_fname, ' ', author_lname)
FROM books;
 
SELECT
  CONCAT(author_fname, ' ', author_lname)
  AS 'full name'
FROM books;
 
SELECT author_fname AS first, author_lname AS last, 
  CONCAT(author_fname, ' ', author_lname) AS full
FROM books;
 
SELECT author_fname AS first, author_lname AS last, 
  CONCAT(author_fname, ', ', author_lname) AS full
FROM books;
 
SELECT CONCAT(title, '-', author_fname, '-', author_lname) FROM books;
 
SELECT 
    CONCAT_WS(' - ', title, author_fname, author_lname) 
FROM books;


------------------------------------------------------

/*l103 substring
*****************************************************/
SELECT SUBSTRING('Hello World', 1, 4);
--Hell

SELECT SUBSTRING('Hello World', 7);
--World

SELECT SUBSTRING('Hello World', -3);
--rld

SELECT SUBSTRING('Hello World', 1, 4);
 
SELECT SUBSTRING('Hello World', 7);
 
SELECT SUBSTRING('Hello World', 3, 8);
 
SELECT SUBSTRING('Hello World', 3);
 
SELECT SUBSTRING('Hello World', -3);
 
SELECT SUBSTRING('Hello World', -7);
 
SELECT title FROM books;
 
SELECT SUBSTRING("Where I'm Calling From: Selected Stories", 1, 10);
 
SELECT SUBSTRING(title, 1, 10) FROM books;
 
SELECT SUBSTRING(title, 1, 10) AS 'short title' FROM books;
 
SELECT SUBSTR(title, 1, 10) AS 'short title' FROM books;
 
SELECT CONCAT
  (
    SUBSTRING(title, 1, 10),
    '...'
  )
FROM books;
 
source book_code.sql
 
SELECT CONCAT
  (
    SUBSTRING(title, 1, 10),
    '...'
  ) AS 'short title'
FROM books;

------------------------------------------------------

/*l
*****************************************************/



------------------------------------------------------

/*l
*****************************************************/



------------------------------------------------------

/*l
*****************************************************/



------------------------------------------------------

/*l
*****************************************************/



------------------------------------------------------

/*l
*****************************************************/



------------------------------------------------------

/*l
*****************************************************/



------------------------------------------------------

/*l
*****************************************************/



------------------------------------------------------
