CREATE TABLE users (
id int NOT NULL auto_increment ,
  name VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255) not  null,
  profileImage VARCHAR(255),
  phone VARCHAR(255),
roleId int NOT NULL  ,
  PRIMARY KEY (id)

);

SHOW CREATE TABLE users;

DROP TABLE users;

SELECT * FROM users;
ALTER TABLE users ADD COLUMN image_url VARCHAR(255) DEFAULT 'https://www.freepik.com/free-vector/businessman-character-avatar-isolated_6769264.htm#query=avatar&position=0&from_view=keyword&track=sph';

UPDATE users SET image_url = 'https://www.freepik.com/free-vector/businessman-character-avatar-isolated_6769264.htm#query=avatar&position=0&from_view=keyword&track=sph';

INSERT INTO users (name, email, password, phone, roleId)
VALUES
  ('John Doe', 'john.doe@example.com', '$2a$12$nBg9YCp/a804Us71STV/GuiL9hhCk.GThqHcYJoPXTjJNdNIH4dae', '9876543210', 1),
  ('Jane Smith', 'jane.smith@example.com', '$2a$12$nBg9YCp/a804Us71STV/GuiL9hhCk.GThqHcYJoPXTjJNdNIH4dae', '9876543211', 2),
  ('Amit Patel', 'amit.patel@example.com', '$2a$12$nBg9YCp/a804Us71STV/GuiL9hhCk.GThqHcYJoPXTjJNdNIH4dae', '9876543212', 3),
  ('Priya Gupta', 'priya.gupta@example.com', '$2a$12$nBg9YCp/a804Us71STV/GuiL9hhCk.GThqHcYJoPXTjJNdNIH4dae', '9876543213', 3),
  ('Rajesh Kumar', 'rajesh.kumar@example.com', '$2a$12$nBg9YCp/a804Us71STV/GuiL9hhCk.GThqHcYJoPXTjJNdNIH4dae', '9876543214', 3),
  ('Neha Sharma', 'neha.sharma@example.com', '$2a$12$nBg9YCp/a804Us71STV/GuiL9hhCk.GThqHcYJoPXTjJNdNIH4dae', '9876543215', 4),
  ('Sanjay Verma', 'sanjay.verma@example.com', '$2a$12$nBg9YCp/a804Us71STV/GuiL9hhCk.GThqHcYJoPXTjJNdNIH4dae', '9876543216', 4),
  ('Aarav Singh', 'aarav.singh@example.com', '$2a$12$nBg9YCp/a804Us71STV/GuiL9hhCk.GThqHcYJoPXTjJNdNIH4dae', '9876543217', 4),
  ('Ananya Reddy', 'ananya.reddy@example.com', '$2a$12$nBg9YCp/a804Us71STV/GuiL9hhCk.GThqHcYJoPXTjJNdNIH4dae', '9876543218', 5),
  ('Sachin Nair', 'sachin.nair@example.com', '$2a$12$nBg9YCp/a804Us71STV/GuiL9hhCk.GThqHcYJoPXTjJNdNIH4dae', '9876543219', 5),
  ('Meera Iyer', 'meera.iyer@example.com', '$2a$12$nBg9YCp/a804Us71STV/GuiL9hhCk.GThqHcYJoPXTjJNdNIH4dae', '9876543220', 5),
  ('Rahul Sharma', 'rahul.sharma@example.com', '$2a$12$nBg9YCp/a804Us71STV/GuiL9hhCk.GThqHcYJoPXTjJNdNIH4dae', '9876543221', 5),
  ('Divya Das', 'divya.das@example.com', '$2a$12$nBg9YCp/a804Us71STV/GuiL9hhCk.GThqHcYJoPXTjJNdNIH4dae', '9876543222', 5),
  ('Vikram Singh', 'vikram.singh@example.com', '$2a$12$nBg9YCp/a804Us71STV/GuiL9hhCk.GThqHcYJoPXTjJNdNIH4dae', '9876543223', 5),
  ('Kavita Patel', 'kavita.patel@example.com', '$2a$12$nBg9YCp/a804Us71STV/GuiL9hhCk.GThqHcYJoPXTjJNdNIH4dae', '9876543224', 5);
