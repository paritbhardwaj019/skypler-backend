CREATE TABLE tasks (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Project_id int,
  task VARCHAR(255) NOT NULL,
  status VARCHAR,
  assigned_to INT
)
