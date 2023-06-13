CREATE TABLE out_office (
    id INT PRIMARY KEY,
    project_id int,
    work varchar(255),
    name VARCHAR(255),
    entry_by INT,
    date DATE,
    amount DECIMAL(10, 2),
    remark VARCHAR(255),
    intime TIME,
    outtime TIME
);


SHOW CREATE TABLE out_office;

DROP TABLE out_office;

SELECT * FROM out_office;INSERT INTO out_office (id, project_id, work, name, entry_by, date, amount, remark, intime, outtime)
VALUES
    (1, 1, 'Excavation', 'John Doe', 1001, '2023-06-01', 250.00, 'Completed excavation work', '08:00:00', '16:00:00'),
    (2, 1, 'Carpentry', 'Jane Smith', 1002, '2023-06-02', 350.00, 'Installed wooden frames', '09:30:00', '17:30:00'),
    (3, 1, 'Painting', 'David Johnson', 1003, '2023-06-03', 150.00, 'Painted walls', '10:00:00', '16:30:00'),
    (4, 1, 'Plumbing', 'Mary Wilson', 1004, '2023-06-04', 200.00, 'Fixed water pipes', '11:00:00', '15:00:00'),
    (5, 1, 'Concrete pouring and finishing', 'Robert Taylor', 1005, '2023-06-05', 450.00, 'Poured and leveled concrete', '08:30:00', '16:30:00'),
    (6, 1, 'Electrical work', 'Patricia Anderson', 1006, '2023-06-06', 300.00, 'Installed electrical fixtures', '09:00:00', '17:00:00'),
    (7, 1, 'Bricklaying/Masonry', 'Michael Thomas', 1007, '2023-06-07', 280.00, 'Constructed brick walls', '08:30:00', '16:30:00'),
    (8, 1, 'Roofing', 'Linda Martinez', 1008, '2023-06-08', 380.00, 'Installed roof tiles', '09:30:00', '17:30:00'),
    (9, 1, 'Flooring installation', 'Christopher Garcia', 1009, '2023-06-09', 320.00, 'Laid floor tiles', '10:00:00', '16:00:00'),
    (10, 1, 'Drywall installation', 'Elizabeth Robinson', 1010, '2023-06-10', 270.00, 'Installed drywall sheets', '08:00:00', '15:30:00'),
    (11, 1, 'Landscaping', 'Daniel Lee', 1011, '2023-06-11', 180.00, 'Planted trees and flowers', '08:30:00', '15:00:00'),
    (12, 1, 'Welding', 'Susan Clark', 1012, '2023-06-12', 400.00, 'Performed welding tasks', '09:00:00', '17:00:00'),
    (13, 1, 'Scaffolding', 'Joseph Hall', 1013, '2023-06-13', 150.00, 'Set up scaffolding structure', '08:30:00', '15:30:00'),
    (14, 1, 'Demolition', 'Karen Young', 1014, '2023-06-14', 220.00, 'Demolished old structure', '09:30:00', '17:30:00'),
    (15, 1, 'Steel reinforcement', 'Thomas Lewis', 1015, '2023-06-15', 320.00, 'Installed steel reinforcements', '10:00:00', '16:00:00'),
    (16, 1, 'Tile setting', 'Jessica Walker', 1016, '2023-06-16', 180.00, 'Set tiles in bathrooms', '08:00:00', '15:00:00'),
    (17, 1, 'HVAC installation', 'Richard Harris', 1017, '2023-06-17', 380.00, 'Installed HVAC system', '08:30:00', '16:30:00'),
    (18, 1, 'Insulation', 'Sarah King', 1018, '2023-06-18', 270.00, 'Insulated walls and pipes', '09:00:00', '17:00:00'),
    (19, 1, 'Waterproofing', 'William Wright', 1019, '2023-06-19', 200.00, 'Applied waterproofing material', '08:30:00', '16:00:00'),
    (20, 1, 'Masonry restoration', 'Laura Turner', 1020, '2023-06-20', 250.00, 'Restored old brickwork', '09:30:00', '17:30:00'),
    (21, 1, 'Excavation', 'John Doe', 1021, '2023-06-21', 250.00, 'Completed excavation work', '08:00:00', '16:00:00'),
    (22, 1, 'Carpentry', 'Jane Smith', 1022, '2023-06-22', 350.00, 'Installed wooden frames', '09:30:00', '17:30:00'),
    (23, 1, 'Painting', 'David Johnson', 1023, '2023-06-23', 150.00, 'Painted walls', '10:00:00', '16:30:00'),
    (24, 1, 'Plumbing', 'Mary Wilson', 1024, '2023-06-24', 200.00, 'Fixed water pipes', '11:00:00', '15:00:00'),
    (25, 1, 'Concrete pouring and finishing', 'Robert Taylor', 1025, '2023-06-25', 450.00, 'Poured and leveled concrete', '08:30:00', '16:30:00'),
    (26, 1, 'Electrical work', 'Patricia Anderson', 1026, '2023-06-26', 300.00, 'Installed electrical fixtures', '09:00:00', '17:00:00'),
    (27, 1, 'Bricklaying/Masonry', 'Michael Thomas', 1027, '2023-06-27', 280.00, 'Constructed brick walls', '08:30:00', '16:30:00'),
    (28, 1, 'Roofing', 'Linda Martinez', 1028, '2023-06-28', 380.00, 'Installed roof tiles', '09:30:00', '17:30:00'),
    (29, 1, 'Flooring installation', 'Christopher Garcia', 1029, '2023-06-29', 320.00, 'Laid floor tiles', '10:00:00', '16:00:00'),
    (30, 1, 'Drywall installation', 'Elizabeth Robinson', 1030, '2023-06-30', 270.00, 'Installed drywall sheets', '08:00:00', '15:30:00');
