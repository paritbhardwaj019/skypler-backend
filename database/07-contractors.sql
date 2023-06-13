CREATE TABLE contractor (
  contractor_id INT PRIMARY KEY,
  contractor_name VARCHAR(255),
  contact_person VARCHAR(255),
  contact_details VARCHAR(255),
  labour_count INT,
  project_ids varchar(255)
);


INSERT INTO contractor (contractor_id, contractor_name, contact_person, contact_details, labour_count, project_ids)
VALUES (1, 'ABC Construction', 'Rajesh Kumar', '+91-9876543210', 10, '1,2,4,6');

INSERT INTO contractor (contractor_id, contractor_name, contact_person, contact_details, labour_count, project_ids)
VALUES (2, 'XYZ Builders', 'Ajay Sharma', '+91-8765432109', 8, '3,5,7');

INSERT INTO contractor (contractor_id, contractor_name, contact_person, contact_details, labour_count, project_ids)
VALUES (3, 'PQR Contractors', 'Vikram Singh', '+91-7654321098', 12, '2,4,6,8');

INSERT INTO contractor (contractor_id, contractor_name, contact_person, contact_details, labour_count, project_ids)
VALUES (4, 'LMN Construction', 'Anita Verma', '+91-9876543211', 6, '1,3,5');

INSERT INTO contractor (contractor_id, contractor_name, contact_person, contact_details, labour_count, project_ids)
VALUES (5, 'EFG Builders', 'Sandeep Patel', '+91-8765432108', 15, '4,6,8');
