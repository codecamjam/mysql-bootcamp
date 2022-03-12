
/*l241 cloning instagram's db: users schema
*****************************************************/
CREATE DATABASE ig_clone;
USE ig_clone;

CREATE TABLE users (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO users (username) VALUES
('BlueTheCat')
('CharlieBrown')
('ColtSteele');


------------------------------------------------------



/*l243 cloning instagram's db: photos schema
*****************************************************/

CREATE TABLE photos (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id)
);

INSERT INTO photos (image_url, user_id) VALUES 
('/alskjd76', 1)
('/lkajsd98', 2)
('/90jddlkj', 3);

SELECT photos.image_url, users.username
FROM photos
JOIN users
  ON photos.user_id = users.id;

------------------------------------------------------



/*l245 cloning instagram's db: comments schema
*****************************************************/
CREATE TABLE comments (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(255) NOT NULL,
    photo_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    FOREIGN KEY(user_id) REFERENCES users(id)
);

INSERT INTO comments(comment_text, user_id, photo_id) VALUES 
('Meow', 1, 2)
('Amazing shot!', 3, 2)
('I <3 This', 2, 1);

------------------------------------------------------



/*l247 cloning instagram's db: likes schema
*****************************************************/


------------------------------------------------------



/*l249 cloning instagram's db: followersschema
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