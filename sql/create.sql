CREATE DATABASE users_DB;

CREATE TABLE users (
  userId VARCHAR(60),
  userName VARCHAR(20),
  profileImg VARCHAR(200),
  created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  Updated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  PRIMARY KEY(userId)
);

INSERT INTO users(userId, userName, profileImg) VALUES
('jaemin104', 'kim', 'image1'),
('jaemin105', 'jae', 'image2'),
('asd', 'min', 'image3'),
('rootpark', 'park', 'image4'),
('gijae', 'gijaeee', 'image5');

SELECT userId, userName
FROM users
ORDER BY created DESC
LIMIT 1;

SELECT userName
FROM users
WHERE userId = 'asd';

DELETE FROM users
WHERE userName = 'park';

UPDATE users
SET userId = 'dsa'
WHERE userName = 'gijaeee';
