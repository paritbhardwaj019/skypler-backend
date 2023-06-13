CREATE TABLE material_master (
  id INT auto_increment PRIMARY KEY,
  material_name VARCHAR(255)
);

SHOW CREATE TABLE material_master;

DROP TABLE material_master;

SELECT * FROM material_master;


INSERT INTO material_master (material_name)
VALUES
  ('Cement'),
  ('Steel'),
  ('Concrete'),
  ('Bricks'),
  ('Wood'),
  ('Glass'),
  ('Aluminum'),
  ('Plastic'),
  ('Stone'),
  ('Asphalt'),
  ('Tiles'),
  ('Plaster'),
  ('Insulation materials'),
  ('Roofing materials (e.g., shingles)'),
  ('Electrical wiring and cables'),
  ('Plumbing pipes and fittings'),
  ('Paints and coatings'),
  ('Adhesives and sealants'),
  ('Reinforcement bars'),
  ('Aggregates (e.g., sand, gravel)');
