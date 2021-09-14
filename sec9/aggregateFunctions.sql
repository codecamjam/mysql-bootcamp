
/*l134 COUNT function
*****************************************************/
SELECT COUNT(*) FROM books;
 
SELECT COUNT(author_fname) FROM books;
 
SELECT COUNT(DISTINCT author_fname) FROM books;
 
SELECT COUNT(DISTINCT author_lname) FROM books;
 
SELECT COUNT(DISTINCT author_lname, author_fname) FROM books;
 
SELECT title FROM books WHERE title LIKE '%the%';
 
SELECT COUNT(*) FROM books WHERE title LIKE '%the%';


------------------------------------------------------


/*l36 GROUP BY
*****************************************************/

SELECT title, author_lname FROM books;
 
SELECT title, author_lname FROM books
GROUP BY author_lname;
 
SELECT author_lname, COUNT(*) 
FROM books GROUP BY author_lname;
 
 
SELECT title, author_fname, author_lname FROM books;
 
SELECT title, author_fname, author_lname FROM books GROUP BY author_lname;
 
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname;
 
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;
 
SELECT released_year FROM books;
 
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;
 
SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') AS year FROM books GROUP BY released_year;

------------------------------------------------------


/*l39 min and max
*****************************************************/
SELECT MIN(released_year) 
FROM books;
 
SELECT MIN(released_year) FROM books;
 
SELECT MIN(pages) FROM books;
 
SELECT MAX(pages) 
FROM books;
 
SELECT MAX(released_year) 
FROM books;
 
SELECT MAX(pages), title
FROM books;


------------------------------------------------------


/*l141 Subqueries: a problem with min and max
*****************************************************/
SELECT * FROM books 
WHERE pages = (SELECT Min(pages) 
                FROM books); 
 
SELECT title, pages FROM books 
WHERE pages = (SELECT Max(pages) 
                FROM books); 
 
SELECT title, pages FROM books 
WHERE pages = (SELECT Min(pages) 
                FROM books); 
 
SELECT * FROM books 
ORDER BY pages ASC LIMIT 1;
 
SELECT title, pages FROM books 
ORDER BY pages ASC LIMIT 1;
 
SELECT * FROM books 
ORDER BY pages DESC LIMIT 1;


------------------------------------------------------


/*l143 using min and max with groupBy
*****************************************************/
-- find the year each author published
-- their first book
SELECT author_fname, author_lname, MIN(released_year)
FROM books
GROUP BY author_lname, author_fname;

-- find the longest page count for each author
SELECT author_fname, author_lname, title, MAX(pages) 
FROM books
GROUP BY author_lname, author_fname;

SELECT
  CONCAT(author_fname, ' ', author_lname) AS author,
  MAX(pages) AS 'longest book'
FROM books
GROUP BY author_lname,
         author_fname;


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


/*l
*****************************************************/



------------------------------------------------------



