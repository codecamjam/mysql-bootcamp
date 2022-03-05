
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




/*l146 Sum Function
*****************************************************/
SELECT SUM(pages)
FROM books;
 
SELECT SUM(released_year) FROM books;
 
SELECT author_fname,
    author_lname,
    Sum(pages) 
FROM books
GROUP BY
    author_lname,
    author_fname;
 
SELECT author_fname,
      author_lname,
      Sum(released_year)
FROM books
GROUP BY
    author_lname,
    author_fname;

SELECT author_fname,
    author_lname,
    Sum(pages) AS sum_pages
FROM books
GROUP BY
    author_lname,
    author_fname
ORDER BY sum_pages;



------------------------------------------------------


/*l148 AVG Function
*****************************************************/
SELECT AVG(released_year) 
FROM books;
 
SELECT AVG(pages) 
FROM books;
 
SELECT AVG(stock_quantity) 
FROM books 
GROUP BY released_year;
 
SELECT released_year, AVG(stock_quantity) 
FROM books 
GROUP BY released_year;
 
SELECT author_fname, author_lname, AVG(pages) FROM books
GROUP BY author_lname, author_fname;


------------------------------------------------------


/*l150 Aggregate function challenges
*****************************************************/
--print the number of books in the DB
SELECT COUNT(*) FROM books;

--print out how many books were released in each year
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

--print out the total number of books in stock
SELECT Sum(stock_quantity) FROM BOOKS;

--find the average year for each author
SELECT author_fname, author_lname, AVG(released_year) 
FROM books 
GROUP BY author_fname, author_lname;

--find the full name of the author who wrote the longest book
SELECT CONCAT(author_fname , ' ' , author_lname) as 'full name', pages
FROM books
ORDER BY pages DESC 
LIMIT 1;

SELECT 
  released_year AS year,
  COUNT(*) AS '# books',
  AVG(pages) AS 'avg pages'
FROM books
GROUP BY year;



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



