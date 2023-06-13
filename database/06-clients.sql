CREATE TABLE client (
  client_id INT PRIMARY KEY,
  client_name VARCHAR(255),
  contact_person VARCHAR(255),
  contact_details VARCHAR(255),
  project_ids VARCHAR(255)

);
SHOW CREATE TABLE client;

DROP TABLE client;

SELECT * FROM client;