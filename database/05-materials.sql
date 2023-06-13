CREATE TABLE materials (
  material_id INT PRIMARY KEY,
  project_id INT not null,

  material_type VARCHAR(255)not null,
  supplier VARCHAR(255),
  quantity DECIMAL(10, 2),
  unit VARCHAR(50),
  unit_price DECIMAL(10, 2),
  total_price DECIMAL(10, 2),
  stock_available VARCHAR(50),
   current_stock  DECIMAL(10, 2),
  notes TEXT
);
SHOW CREATE TABLE materials;

DROP TABLE materials;

SELECT * FROM materials;

INSERT INTO materials (material_id, project_id, material_type, supplier, quantity, unit, unit_price, total_price, stock_available, notes, current_stock)
VALUES
  (1, 1, 'Cement', 'UltraTech Cement', 100, 'bags', 10.50, 1050.00, 'In Stock', 'Notes for Material 1', 100),
  (2, 1, 'Steel', 'Tata Steel', 500, 'kg', 5.00, 2500.00, 'In Stock', 'Notes for Material 2', 500),
  (3, 1, 'Concrete', 'ACC Limited', 200, 'cubic meters', 80.00, 16000.00, 'In Stock', 'Notes for Material 3', 200),
  (4, 1, 'Bricks', 'Kumar Bricks', 1000, 'pieces', 0.50, 500.00, 'In Stock', 'Notes for Material 4', 1000),
  (5, 1, 'Wood', 'Greenply Industries', 50, 'cubic meters', 150.00, 7500.00, 'In Stock', 'Notes for Material 5', 50),
  (6, 1, 'Glass', 'Saint-Gobain India', 20, 'square meters', 30.00, 600.00, 'In Stock', 'Notes for Material 6', 20),
  (7, 1, 'Aluminum', 'Hindalco Industries', 100, 'kg', 15.00, 1500.00, 'In Stock', 'Notes for Material 7', 100),
  (8, 1, 'Plastic', 'Supreme Industries', 200, 'kg', 2.50, 500.00, 'In Stock', 'Notes for Material 8', 200),
  (9, 1, 'Stone', 'Rajasthan Stone Syndicate', 50, 'cubic meters', 100.00, 5000.00, 'In Stock', 'Notes for Material 9', 50),
  (10, 1, 'Asphalt', 'Jaihind Road Contractors', 10, 'tons', 200.00, 2000.00, 'In Stock', 'Notes for Material 10', 10),
  (11, 1, 'Tiles', 'Asian Granito India Ltd', 500, 'square meters', 25.00, 12500.00, 'In Stock', 'Notes for Material 11', 500),
  (12, 1, 'Plaster', 'Birla White', 100, 'bags', 15.00, 1500.00, 'In Stock', 'Notes for Material 12', 100),
  (13, 1, 'Insulation materials', 'Supreme Industries', 50, 'rolls', 80.00, 4000.00, 'In Stock', 'Notes for Material 13', 50),
  (14, 1, 'Roofing materials (e.g., shingles)', 'Everest Industries Limited', 200, 'pieces', 5.00, 1000.00, 'In Stock', 'Notes for Material 14', 200),
  (15, 1, 'Electrical wiring and cables', 'Polycab India Limited', 1000, 'meters', 2.00, 2000.00, 'In Stock', 'Notes for Material 15', 1000),
  (16, 1, 'Plumbing pipes and fittings', 'Finolex Industries', 500, 'meters', 3.50, 1750.00, 'In Stock', 'Notes for Material 16', 500),
  (17, 1, 'Paints and coatings', 'Asian Paints', 50, 'liters', 20.00, 1000.00, 'In Stock', 'Notes for Material 17', 50),
  (18, 1, 'Adhesives and sealants', 'Pidilite Industries Ltd', 100, 'tubes', 5.00, 500.00, 'In Stock', 'Notes for Material 18', 100),
  (19, 1, 'Reinforcement bars', 'JSW Steel Ltd', 200, 'tons', 3000.00, 600000.00, 'In Stock', 'Notes for Material 19', 200),
  (20, 1, 'Aggregates (e.g., sand, gravel)', 'UltraTech Aggregates', 1000, 'cubic meters', 50.00, 50000.00, 'In Stock', 'Notes for Material 20', 1000),
  (21, 1, 'Cement', 'Ambuja Cement', 200, 'bags', 10.50, 2100.00, 'In Stock', 'Notes for Material 21', 200),
  (22, 1, 'Steel', 'SAIL (Steel Authority of India Limited)', 1000, 'kg', 5.00, 5000.00, 'In Stock', 'Notes for Material 22', 1000),
  (23, 1, 'Concrete', 'LafargeHolcim', 500, 'cubic meters', 80.00, 40000.00, 'In Stock', 'Notes for Material 23', 500),
  (24, 1, 'Bricks', 'Bhakti Bricks', 2000, 'pieces', 0.50, 1000.00, 'In Stock', 'Notes for Material 24', 2000),
  (25, 1, 'Wood', 'Green Valley Plywood Limited', 100, 'cubic meters', 150.00, 15000.00, 'In Stock', 'Notes for Material 25', 100),
  (26, 1, 'Glass', 'Asahi India Glass Ltd', 50, 'square meters', 30.00, 1500.00, 'In Stock', 'Notes for Material 26', 50),
  (27, 1, 'Aluminum', 'Nalco (National Aluminium Company Limited)', 200, 'kg', 15.00, 3000.00, 'In Stock', 'Notes for Material 27', 200),
  (28, 1, 'Plastic', 'Supreme Industries', 300, 'kg', 2.50, 750.00, 'In Stock', 'Notes for Material 28', 300),
  (29, 1, 'Stone', 'Shree Stone Industries', 100, 'cubic meters', 100.00, 10000.00, 'In Stock', 'Notes for Material 29', 100),
  (30, 1, 'Asphalt', 'Jagdamba Constructions', 20, 'tons', 200.00, 4000.00, 'In Stock', 'Notes for Material 30', 20);
