/*l258 loading the jumbo dataset
*****************************************************/


------------------------------------------------------


/*l260 insta clone challenge 1
*****************************************************/
-- 1. Finding 5 oldest users

SELECT * 
FROM users
ORDER BY created_at
LIMIT 5;


------------------------------------------------------



/*ll262 insta clone challenge 2
*****************************************************/
-- 2. Most Popular Registration Date

SELECT 
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;

------------------------------------------------------



/*ll264 insta clone challenge 3
*****************************************************/
-- 3. Identify Inactive Users (users with no photos)

SELECT username
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE photos.id IS NULL;


------------------------------------------------------



/*l266 insta clone challenge 4
*****************************************************/
-- 4. Identify most popular photo (and user who created it)

SELECT 
    username,
    photos.id,
    photos.image_url, 
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

------------------------------------------------------



/*l268 insta clone challenge 5
*****************************************************/
-- 5. Calculate average number of photos per user

SELECT (SELECT Count(*) 
        FROM   photos) / (SELECT Count(*) 
                          FROM   users) AS avg; 

------------------------------------------------------



/*l270 insta clone challenge 6
*****************************************************/
-- 6. Find the five most popular hashtags

SELECT tags.tag_name, 
       Count(*) AS total 
FROM   photo_tags 
       JOIN tags 
         ON photo_tags.tag_id = tags.id 
GROUP  BY tags.id 
ORDER  BY total DESC 
LIMIT  5; 

------------------------------------------------------



/*l273 insta clone challenge 7 HAVING
*****************************************************/
-- 7. Finding the bots - the users who have liked every single photo

SELECT username, 
       Count(*) AS num_likes 
FROM   users 
       INNER JOIN likes 
               ON users.id = likes.user_id 
GROUP  BY likes.user_id 
HAVING num_likes = (SELECT Count(*) 
                    FROM   photos); 

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