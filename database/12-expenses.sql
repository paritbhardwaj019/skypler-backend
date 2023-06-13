CREATE TABLE expenses (
    id INT PRIMARY KEY,
    project_id INT,
    date DATE,
    particulars VARCHAR(255),
    quantity INT,
    entry_by INT,
    brief_particular VARCHAR(255),
    total_amount DECIMAL(10, 2),
    status VARCHAR(255),
    paid_amount DECIMAL(10, 2),
    unpaid DECIMAL(10, 2),
    payment_date DATE,
    due_date DATE
);
INSERT INTO expenses (id, project_id, date,brief_particular, quantity, entry_by,particulars , total_amount, status, paid_amount, unpaid, payment_date, due_date)
VALUES
  (1, 1, '2023-01-01', 'Material', 100, 0, 'Cement', 10.50, 'Unpaid', 0, 1050.00, NULL, NULL),
  (2, 1, '2023-01-02', 'Material', 500, 0, 'Steel', 5.00, 'Unpaid', 0, 2500.00, NULL, NULL),
  (3, 1, '2023-01-03', 'Material', 200, 0, 'Concrete', 80.00, 'Unpaid', 0, 16000.00, NULL, NULL),
  (4, 1, '2023-01-04', 'Material', 1000, 0, 'Bricks', 0.50, 'Unpaid', 0, 500.00, NULL, NULL),
  (5, 1, '2023-01-05', 'Material', 50, 0, 'Wood', 150.00, 'Unpaid', 0, 7500.00, NULL, NULL),
  (6, 1, '2023-01-06', 'Material', 20, 0, 'Glass', 30.00, 'Unpaid', 0, 600.00, NULL, NULL),
  (7, 1, '2023-01-07', 'Material', 100, 0, 'Aluminum', 15.00, 'Unpaid', 0, 1500.00, NULL, NULL),
  (8, 1, '2023-01-08', 'Material', 200, 0, 'Plastic', 2.50, 'Unpaid', 0, 500.00, NULL, NULL),
  (9, 1, '2023-01-09', 'Material', 50, 0, 'Stone', 100.00, 'Unpaid', 0, 5000.00, NULL, NULL),
  (10, 1, '2023-01-10', 'Material', 10, 0, 'Asphalt', 200.00, 'Unpaid', 0, 2000.00, NULL, NULL),
  (11, 1, '2023-01-11', 'Material', 500, 0, 'Tiles', 25.00, 'Unpaid', 0, 12500.00, NULL, NULL),
  (12, 1, '2023-01-12', 'Material', 100, 0, 'Plaster', 15.00, 'Unpaid', 0, 1500.00, NULL, NULL),
  (13, 1, '2023-01-13', 'Material', 50, 0, 'Insulation materials', 80.00, 'Unpaid', 0, 4000.00, NULL, NULL),
  (14, 1, '2023-01-14', 'Material', 200, 0, 'Roofing materials (e.g., shingles)', 5.00, 'Unpaid', 0, 1000.00, NULL, NULL),
  (15, 1, '2023-01-15', 'Material', 1000, 0, 'Electrical wiring and cables', 2.00, 'Unpaid', 0, 2000.00, NULL, NULL),
  (16, 1, '2023-01-16', 'Material', 500, 0, 'Plumbing pipes and fittings', 3.50, 'Unpaid', 0, 1750.00, NULL, NULL),
  (17, 1, '2023-01-17', 'Material', 50, 0, 'Paints and coatings', 20.00, 'Unpaid', 0, 1000.00, NULL, NULL),
  (18, 1, '2023-01-18', 'Material', 100, 0, 'Adhesives and sealants', 5.00, 'Unpaid', 0, 500.00, NULL, NULL),
  (19, 1, '2023-01-19', 'Material', 200, 0, 'Reinforcement bars', 3000.00, 'Unpaid', 0, 600000.00, NULL, NULL),
  (20, 1, '2023-01-20', 'Material', 1000, 0, 'Aggregates (e.g., sand, gravel)', 50.00, 'Unpaid', 0, 50000.00, NULL, NULL),
  (21, 1, '2023-01-21', 'Material', 200, 0, 'Cement', 10.50, 'Unpaid', 0, 2100.00, NULL, NULL),
  (22, 1, '2023-01-22', 'Material', 1000, 0, 'Steel', 5.00, 'Unpaid', 0, 5000.00, NULL, NULL),
  (23, 1, '2023-01-23', 'Material', 500, 0, 'Concrete', 80.00, 'Unpaid', 0, 40000.00, NULL, NULL),
  (24, 1, '2023-01-24', 'Material', 2000, 0, 'Bricks', 0.50, 'Unpaid', 0, 1000.00, NULL, NULL),
  (25, 1, '2023-01-25', 'Material', 100, 0, 'Wood', 150.00, 'Unpaid', 0, 15000.00, NULL, NULL),
  (26, 1, '2023-01-26', 'Material', 50, 0, 'Glass', 30.00, 'Unpaid', 0, 1500.00, NULL, NULL),
  (27, 1, '2023-01-27', 'Material', 200, 0, 'Aluminum', 15.00, 'Unpaid', 0, 3000.00, NULL, NULL),
  (28, 1, '2023-01-28', 'Material', 300, 0, 'Plastic', 2.50, 'Unpaid', 0, 750.00, NULL, NULL),
  (29, 1, '2023-01-29', 'Material', 100, 0, 'Stone', 100.00, 'Unpaid', 0, 10000.00, NULL, NULL),
  (30, 1, '2023-01-30', 'Material', 20, 0, 'Asphalt', 200.00, 'Unpaid', 0, 4000.00, NULL, NULL);
INSERT INTO expenses (id, project_id, date, particulars, quantity, entry_by, brief_particular, total_amount, status, paid_amount, unpaid, payment_date, due_date)
VALUES
  (31, 1, '2023-01-31', 'IMPS, BNI, Office Expense', 0, 0, 'Common Expense', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (32, 1, '2023-02-01', 'Pasu Petrol & Food', 0, 0, 'Miscellaneous', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (33, 1, '2023-02-02', 'Soil Test, Borewell', 0, 0, 'Labour', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (34, 1, '2023-02-03', 'IMPS , Jaya Int & Oviya', 0, 0, 'Common Expense', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (35, 1, '2023-02-04', 'Two Wheeler Insurance', 0, 0, 'Miscellaneous', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (36, 1, '2023-02-05', 'Office Salary', 0, 0, 'Miscellaneous', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (37, 1, '2023-02-06', 'Office Salary', 0, 0, 'Miscellaneous', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (38, 1, '2023-02-07', 'Tea & Water', 0, 0, 'Miscellaneous', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (39, 1, '2023-02-08', 'Petrol', 0, 0, 'Miscellaneous', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (40, 1, '2023-02-09', 'Transport', 0, 0, 'Miscellaneous', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (41, 1, '2023-02-10', 'JCB', 0, 0, 'Miscellaneous', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (42, 1, '2023-02-11', 'Car Diesel', 0, 0, 'Miscellaneous', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (43, 1, '2023-02-12', 'Narayanan Team', 0, 0, 'Miscellaneous', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (44, 1, '2023-02-13', 'Anna Durai Team', 0, 0, 'Miscellaneous', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (45, 1, '2023-02-14', 'Car Acting Driver', 0, 0, 'Miscellaneous', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (46, 1, '2023-02-15', 'Office Expense', 0, 0, 'Miscellaneous', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (47, 1, '2023-02-16', 'Generator Diesel', 0, 0, 'Miscellaneous', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (48, 1, '2023-02-17', 'Petrol', 0, 0, 'Miscellaneous', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (49, 1, '2023-02-18', 'Water', 0, 0, 'Miscellaneous', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (50, 1, '2023-02-19', 'Office Expense Pooja', 0, 0, 'Miscellaneous', 0.00, 'Unpaid', 0, 0.00, NULL, NULL),
  (51, 1, '2023-02-20', 'Car Diesel', 0, 0, 'Miscellaneous', 0.00, 'Unpaid', 0, 0.00, NULL, NULL);
