CREATE TABLE engineers_daily_balance (
  id INT NOT NULL AUTO_INCREMENT,
  engineer_id INT,
  project_id INT,
  date DATE,
  opening_balance DECIMAL(10, 2),
  closing_balance DECIMAL(10, 2),
  remark VARCHAR(255),
  entry_by int,
  PRIMARY KEY (id)
);
SHOW CREATE TABLE engineers_daily_balance;

DROP TABLE engineers_daily_balance;

SELECT * FROM engineers_daily_balance;
INSERT INTO engineers_daily_balance (engineer_id, project_id, date, opening_balance, closing_balance, remark, entry_by)
VALUES
  (6, 1, '2023-06-01', 1000.00, 1200.00, 'Opening balance', 1),
  (6, 1, '2023-06-02', 1200.00, 1350.00, 'Work progress', 1),
  (6, 1, '2023-06-03', 1350.00, 1500.00, 'Work progress', 1),
  (6, 1, '2023-06-04', 1500.00, 1700.00, 'Work progress', 1),
  (6, 1, '2023-06-05', 1700.00, 1900.00, 'Work progress', 1),
  (6, 1, '2023-06-06', 1900.00, 2000.00, 'Work progress', 1),
  (6, 1, '2023-06-07', 2000.00, 1800.00, 'Work progress', 1),
  (6, 1, '2023-06-08', 1800.00, 1600.00, 'Work progress', 1),
  (6, 1, '2023-06-09', 1600.00, 1800.00, 'Work progress', 1),
  (6, 1, '2023-06-10', 1800.00, 2000.00, 'Work progress', 1),
  (6, 1, '2023-06-11', 2000.00, 2200.00, 'Work progress', 1),
  (6, 1, '2023-06-12', 2200.00, 2400.00, 'Work progress', 1),
  (6, 1, '2023-06-13', 2400.00, 2600.00, 'Work progress', 1),
  (6, 1, '2023-06-14', 2600.00, 2800.00, 'Work progress', 1),
  (6, 1, '2023-06-15', 2800.00, 3000.00, 'Work progress', 1),
  (6, 1, '2023-06-16', 3000.00, 3200.00, 'Work progress', 1),
  (6, 1, '2023-06-17', 3200.00, 3400.00, 'Work progress', 1),
  (6, 1, '2023-06-18', 3400.00, 3600.00, 'Work progress', 1),
  (6, 1, '2023-06-19', 3600.00, 3800.00, 'Work progress', 1),
  (6, 1, '2023-06-20', 3800.00, 4000.00, 'Work progress', 1),
  (6, 1, '2023-06-21', 4000.00, 4200.00, 'Work progress', 1),
  (6, 1, '2023-06-22', 4200.00, 4400.00, 'Work progress', 1),
  (6, 1, '2023-06-23', 4400.00, 4600.00, 'Work progress', 1),
  (6, 1, '2023-06-24', 4600.00, 4800.00, 'Work progress', 1),
  (6, 1, '2023-06-25', 4800.00, 5000.00, 'Work progress', 1),
  (6, 1, '2023-06-26', 5000.00, 5200.00, 'Work progress', 1),
  (6, 1, '2023-06-27', 5200.00, 5400.00, 'Work progress', 1),
  (6, 1, '2023-06-28', 5400.00, 5600.00, 'Work progress', 1),
  (6, 1, '2023-06-29', 5600.00, 5800.00, 'Work progress', 1),
  (6, 1, '2023-06-30', 5800.00, 6000.00, 'Closing balance', 1)