CREATE DATABASE users_DB;

CREATE TABLE users (
  userId VARCHAR(60) PRIMARY KEY,
  userName VARCHAR(20),
  profileImg VARCHAR(200),
  created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  Updated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE
);

INSERT INTO users(userId, userName, profileImg) VALUES
('jaemin104', '김재민', 'image1'),
('jaemin105', '김재맨', 'image2'),
('asd', '누구', 'image3'),
('rootpark', '박근원', 'image4'),
('gijae', '김기재', 'image5');

SELECT userId, userName
FROM users
ORDER BY created DESC
LIMIT 1;

SELECT userName
FROM users
WHERE userId = 'asd';

DELETE FROM users
WHERE userName = '박근원';

UPDATE users
SET userId = 'dsa'
WHERE userName = '김기재';
