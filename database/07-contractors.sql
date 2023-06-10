CREATE TABLE contractor (
  contractor_id INT PRIMARY KEY,
  contractor_name VARCHAR(255),
  contact_person VARCHAR(255),
  contact_details VARCHAR(255),
  labour_count INT,
  project_ids INT,
);
SHOW CREATE TABLE contractor;

DROP TABLE contractor;

SELECT * FROM contractor;