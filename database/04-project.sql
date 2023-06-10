CREATE TABLE projects (
  project_id INT auto_increment PRIMARY KEY ,
  project_name VARCHAR(255),
  project_type ENUM('commercial', 'residential', 'other') Not NULL ,

  project_description VARCHAR(255),
  start_date DATE,
  end_date DATE,
  project_manager VARCHAR(255),
  engineer VARCHAR(255),
  client VARCHAR(255),
  location VARCHAR(255),
  site VARCHAR(255),
  budget DECIMAL(10, 2),
  status VARCHAR(50),
  progress INT,
  contractor VARCHAR(255),

  remarks TEXT
);


SHOW CREATE TABLE projects;

DROP TABLE projects;

SELECT * FROM projects;