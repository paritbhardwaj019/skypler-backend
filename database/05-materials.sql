CREATE TABLE materials (
  material_id INT PRIMARY KEY,
  project_id INT not null,
  material_name VARCHAR(255),
  material_type VARCHAR(255),
  supplier VARCHAR(255),
  quantity DECIMAL(10, 2),
  unit VARCHAR(50),
  unit_price DECIMAL(10, 2),
  total_price DECIMAL(10, 2),
  stock_availability VARCHAR(50),
  location VARCHAR(255),
  notes TEXT
);
SHOW CREATE TABLE materials;

DROP TABLE materials;

SELECT * FROM materials;