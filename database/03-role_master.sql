CREATE TABLE role_master (
id int NOT NULL auto_increment ,
 roleDesc  VARCHAR(255) not  null,
  PRIMARY KEY (id)
);

SHOW CREATE TABLE role_master;

DROP TABLE role_master;

SELECT * FROM role_master;

INSERT INTO role_master (roleDesc) VALUES
('Administrator'),
('Accountant'),
('Engineer');
('Project Manager'),
('HR');
