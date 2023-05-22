CREATE TABLE admins_table (
  adminId int NOT NULL auto_increment ,
  name VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255),
  description varchar(255),
  phone VARCHAR(255),
  
  PRIMARY KEY (adminId)
);

SHOW CREATE TABLE admins_table;

DROP TABLE admins_table;

SELECT * FROM admins_table;