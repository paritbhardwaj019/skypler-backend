CREATE TABLE users (
id int NOT NULL auto_increment ,
  name VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255) not  null,
  profileImage VARCHAR(255),
  phone VARCHAR(255),
roleId int NOT NULL  ,

  PRIMARY KEY (id)

);

SHOW CREATE TABLE users;

DROP TABLE users;

SELECT * FROM users;