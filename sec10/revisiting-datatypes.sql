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



------------------------------------------------------




/*l159 float and double
*****************************************************/



------------------------------------------------------


/*l162 date, time, and datetime
*****************************************************/



------------------------------------------------------


/*l163 creating our date data
*****************************************************/



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

