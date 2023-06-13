CREATE TABLE projects (
  project_id INT auto_increment PRIMARY KEY ,
  project_name VARCHAR(255),
  project_type ENUM('commercial', 'residential', 'other') Not NULL ,

  project_description VARCHAR(255),
  start_date DATE,
  end_date DATE,
  project_manager VARCHAR(255),
  engineer VARCHAR(255),
  client VARCHAR(255),
  location VARCHAR(255),
  site VARCHAR(255),
  budget DECIMAL(10, 2),
  status VARCHAR(50),
  progress INT,
  contractor VARCHAR(255),

  remarks TEXT
);


SHOW CREATE TABLE projects;

DROP TABLE projects;

SELECT * FROM projects;



# Projects

INSERT INTO projects (project_name, project_type, project_description, start_date, end_date, project_manager, engineer, client, location, site, budget, status, progress, contractor, remarks) VALUES
('Park Avenue Residency', 'residential', 'Luxury apartment complex', '2022-05-15', '2023-09-30', 'John Smith', 'David Johnson', 'ABC Developers', 'New Delhi', 'Site A', 15000000.00, 'Ongoing', 40, 'XYZ Construction', 'High-rise building with state-of-the-art amenities'),

('Sunrise Business Park', 'commercial', 'Office space for IT companies', '2022-06-01', '2023-12-31', 'Sarah Adams', 'Michael Brown', 'Tech Enterprises', 'Mumbai', 'Site B', 8000000.00, 'Completed', 100, 'ABC Builders', 'Modern office complex with advanced facilities'),

('Grand Mall Renovation', 'commercial', 'Renovation of existing shopping mall', '2022-07-10', '2023-11-15', 'Robert Johnson', 'Daniel Wilson', 'Fashion Avenue', 'Bangalore', 'Site C', 5000000.00, 'On Hold', 15, 'XYZ Construction', 'Revamping the mall with new stores and improved infrastructure'),

('Lakeview Villas', 'residential', 'Lake-facing luxury villas', '2022-08-05', '2023-10-31', 'Emily Davis', 'Sophia Thompson', 'Lakeview Developers', 'Chennai', 'Site D', 10000000.00, 'Ongoing', 60, 'ABC Builders', 'Exclusive villas with scenic views and modern architecture'),

('City Center Plaza', 'commercial', 'Mixed-use complex with retail and offices', '2022-09-15', '2023-12-31', 'James Wilson', 'Alexander Harris', 'Global Developers', 'Hyderabad', 'Site E', 12000000.00, 'Completed', 100, 'XYZ Construction', 'Integrated commercial hub for shopping and business'),

('Greenwood Heights', 'residential', 'Gated community with green spaces', '2022-10-01', '2023-11-30', 'Emma Anderson', 'Oliver Clark', 'Greenwood Builders', 'Kolkata', 'Site F', 9000000.00, 'Yet to Start', 0, 'ABC Builders', 'Residential project focused on sustainability and wellness'),

('Tech Park Expansion', 'commercial', 'Expansion of existing tech park', '2022-11-15', '2023-12-31', 'William Brown', 'Ethan Turner', 'Tech Incubators', 'Pune', 'Site G', 6000000.00, 'Ongoing', 30, 'XYZ Construction', 'Adding more office space and facilities for growing technology companies'),

('Harmony Residences', 'residential', 'Affordable housing for middle-income families', '2022-12-01', '2023-10-31', 'Ava Roberts', 'Mason Cooper', 'Harmony Developers', 'Jaipur', 'Site H', 7000000.00, 'Completed', 100, 'ABC Builders', 'Promoting community living with well-designed apartments'),

('Riverside Plaza', 'commercial', 'Riverside shopping and entertainment complex', '2023-01-10', '2023-12-31', 'Noah Reed', 'Liam Ward', 'Riverfront Retail', 'Ahmedabad', 'Site I', 4000000.00, 'On Hold', 10, 'XYZ Construction', 'Creating a vibrant destination for shopping and leisure'),

('Gardenia Apartments', 'residential', 'Apartments with lush green gardens', '2023-02-15', '2023-11-30', 'Isabella Bennett', 'Henry Cooper', 'Green Builders', 'Lucknow', 'Site J', 8000000.00, 'Ongoing', 50, 'ABC Builders', 'Blend of nature and modern living in a serene environment'),

('Tech Hub Tower', 'commercial', 'Iconic tower for technology companies', '2023-03-01', '2023-12-31', 'Ella Hall', 'Logan Lewis', 'Tech Innovators', 'Noida', 'Site K', 10000000.00, 'Completed', 100, 'XYZ Construction', 'Symbol of innovation and collaboration for the tech industry'),

('Hillside Retreat', 'residential', 'Luxury villas in the hills', '2023-04-10', '2023-10-31', 'Sophia Adams', 'Lily Harris', 'Hillview Developers', 'Shimla', 'Site L', 12000000.00, 'Yet to Start', 0, 'ABC Builders', 'Exclusive hillside residences with breathtaking views'),

('Oceanfront Resort', 'commercial', 'Beachfront resort with world-class amenities', '2023-05-15', '2023-12-31', 'Liam Johnson', 'Jack Wilson', 'Seaside Hospitality', 'Goa', 'Site M', 15000000.00, 'Ongoing', 30, 'XYZ Construction', 'A haven of luxury and relaxation by the sea'),

('Urban Oasis Apartments', 'residential', 'Modern apartments with urban amenities', '2023-06-01', '2023-11-30', 'Mia Roberts', 'Aiden Clark', 'Urban Developers', 'Coimbatore', 'Site N', 7000000.00, 'Completed', 100, 'ABC Builders', 'Stylish apartments in the heart of the city'),

('Heritage Mall Restoration', 'commercial', 'Restoration of a heritage mall', '2023-07-10', '2023-12-31', 'Noah Hall', 'Ethan Turner', 'Heritage Retail', 'Mysore', 'Site O', 5000000.00, 'On Hold', 20, 'XYZ Construction', 'Preserving the architectural heritage while upgrading the facilities'),

('Palm Grove Villas', 'residential', 'Exclusive villas surrounded by palm trees', '2023-08-05', '2023-11-30', 'Ava Wilson', 'Logan Davis', 'Palmview Developers', 'Kochi', 'Site P', 10000000.00, 'Ongoing', 50, 'ABC Builders', 'A tropical paradise for luxurious living'),

('Tech Valley Towers', 'commercial', 'High-rise towers for tech companies', '2023-09-15', '2023-12-31', 'Oliver Anderson', 'Henry Lewis', 'Tech Valley Inc', 'Chandigarh', 'Site Q', 8000000.00, 'Completed', 100, 'XYZ Construction', 'Providing cutting-edge infrastructure for the technology sector'),

('Riverside Residences', 'residential', 'Riverside apartments with scenic views', '2023-10-01', '2023-10-31', 'Sophia Reed', 'Lily Ward', 'Riverfront Builders', 'Ahmedabad', 'Site R', 9000000.00, 'Yet to Start', 0, 'ABC Builders', 'Unparalleled living experience by the river'),

('Garden Square Plaza', 'commercial', 'Greenery-integrated commercial complex', '2023-11-15', '2023-12-31', 'Ella Roberts', 'Aiden Cooper', 'Garden Square Developers', 'Jaipur', 'Site S', 6000000.00, 'Ongoing', 40, 'XYZ Construction', 'Creating a sustainable and eco-friendly workspace'),

('Serenity Homes', 'residential', 'Tranquil homes in a peaceful neighborhood', '2023-12-01', '2023-10-31', 'Mia Johnson', 'Jack Thompson', 'Serenity Builders', 'Pune', 'Site T', 7000000.00, 'Completed', 100, 'ABC Builders', 'Providing a serene haven away from the city hustle'),

('Harborfront Plaza', 'commercial', 'Waterfront commercial complex', '2024-01-10', '2023-12-31', 'Liam Wilson', 'Aiden Turner', 'Harborview Developers', 'Kolkata', 'Site U', 4000000.00, 'On Hold', 15, 'XYZ Construction', 'Combining business and leisure at the waterfront'),

('Greenwood Apartments', 'residential', 'Eco-friendly apartments with green spaces', '2024-02-15', '2023-11-30', 'Isabella Hall', 'Lily Cooper', 'Greenwood Builders', 'Hyderabad', 'Site V', 9000000.00, 'Ongoing', 60, 'ABC Builders', 'Promoting sustainable and healthy living'),

('Tech Tower One', 'commercial', 'State-of-the-art tech tower', '2024-03-01', '2023-12-31', 'William Anderson', 'Henry Thompson', 'Tech Innovations', 'Mumbai', 'Site W', 10000000.00, 'Completed', 100, 'XYZ Construction', 'A landmark for the technology industry'),

('Hillside Enclave', 'residential', 'Exquisite hillside residences', '2024-04-10', '2023-10-31', 'Ava Johnson', 'Logan Clark', 'Hillview Developers', 'Noida', 'Site X', 12000000.00, 'Yet to Start', 0, 'ABC Builders', 'Luxurious living amidst the beauty of nature'),

('Oceanview Resort', 'commercial', 'Resort with breathtaking ocean views', '2024-05-15', '2023-12-31', 'Noah Roberts', 'Aiden Harris', 'Oceanfront Hospitality', 'Chennai', 'Site Y', 15000000.00, 'Ongoing', 50, 'XYZ Construction', 'An escape to paradise by the sea'),

('Metropolis Apartments', 'residential', 'Urban apartments in a vibrant neighborhood', '2024-06-01', '2023-11-30', 'Emma Lewis', 'Liam Turner', 'Urban Developers', 'Bangalore', 'Site Z', 8000000.00, 'Completed', 100, 'ABC Builders', 'Lively living spaces in the heart of the city'),

('Tech Park Tower', 'commercial', 'Tower for technology companies', '2024-07-10', '2023-12-31', 'Sophia Adams', 'Henry Thompson', 'Tech Incubators', 'Kochi', 'Site AA', 5000000.00, 'On Hold', 25, 'XYZ Construction', 'A hub for innovation and collaboration'),

('Lakefront Villas', 'residential', 'Exquisite villas by the lakeside', '2024-08-05', '2023-11-30', 'William Roberts', 'Logan Ward', 'Lakeview Developers', 'Lucknow', 'Site AB', 10000000.00, 'Ongoing', 70, 'ABC Builders', 'Luxurious living with stunning lake views'),

('Cityscape Plaza', 'commercial', 'Mixed-use complex with panoramic city views', '2024-09-15', '2023-12-31', 'Ella Wilson', 'Aiden Clark', 'Cityscape Developers', 'Jaipur', 'Site AC', 7000000.00, 'Completed', 100, 'XYZ Construction', 'A dynamic urban destination for work and play'),

('Mountainview Homes', 'residential', 'Homes nestled in the mountains', '2024-10-01', '2023-10-31', 'Mia Anderson', 'Henry Harris', 'Mountainview Builders', 'Shimla', 'Site AD', 9000000.00, 'Yet to Start', 0, 'ABC Builders', 'Secluded living amidst breathtaking mountain views'),

('Seaview Resort', 'commercial', 'Beachfront resort with panoramic ocean views', '2024-11-15', '2023-12-31', 'Liam Adams', 'Logan Wilson', 'Seaside Hospitality', 'Goa', 'Site AE', 4000000.00, 'On Hold', 30, 'XYZ Construction', 'A paradise for relaxation and rejuvenation'),

('Metro Apartments', 'residential', 'Apartments connected to metro station', '2024-12-01', '2023-10-31', 'Isabella Johnson', 'Aiden Turner', 'Metro Developers', 'Coimbatore', 'Site AF', 7000000.00, 'Completed', 100, 'ABC Builders', 'Convenient urban living with seamless connectivity'),

('Heritage Mall Redevelopment', 'commercial', 'Redevelopment of a heritage mall', '2025-01-10', '2023-12-31', 'Noah Lewis', 'Henry Clark', 'Heritage Retail', 'Mysore', 'Site AG', 5000000.00, 'On Hold', 40, 'XYZ Construction', 'Reviving the historical charm while modernizing the facilities'),

('Palm Grove Residences', 'residential', 'Luxury residences surrounded by palm trees', '2025-02-15', '2023-11-30', 'Ava Anderson', 'Liam Harris', 'Palmview Developers', 'Ahmedabad', 'Site AH', 10000000.00, 'Ongoing', 80, 'ABC Builders', 'A tropical oasis for refined living'),

('Tech Valley Innovation Center', 'commercial', 'Innovation center for tech startups', '2025-03-01', '2023-12-31', 'Oliver Roberts', 'Henry Thompson', 'Tech Valley Inc', 'Pune', 'Site AI', 8000000.00, 'Completed', 100, 'XYZ Construction', 'Fostering innovation and entrepreneurship in the tech industry'),

('Riverside Plaza Extension', 'commercial', 'Extension of riverside shopping complex', '2025-04-10', '2023-10-31', 'Sophia Wilson', 'Lily Clark', 'Riverfront Retail', 'Hyderabad', 'Site AJ', 12000000.00, 'Yet to Start', 0, 'ABC Builders', 'Enhancing shopping and entertainment experience by the river'),

('Greenwood Tower', 'commercial', 'Green-integrated tower for businesses', '2025-05-15', '2023-12-31', 'Emma Anderson', 'Aiden Harris', 'Greenwood Builders', 'Bangalore', 'Site AK', 15000000.00, 'Ongoing', 60, 'XYZ Construction', 'Promoting sustainability and environmental consciousness in business spaces'),

('Tech Hub Expansion', 'commercial', 'Expansion of technology hub', '2025-06-01', '2023-11-30', 'William Roberts', 'Henry Clark', 'Tech Innovators', 'Mumbai', 'Site AL', 9000000.00, 'Completed', 100, 'ABC Builders', 'Catering to the growing needs of the technology industry'),

('Hillside Haven', 'residential', 'Secluded hillside retreat', '2025-07-10', '2023-12-31', 'Ava Lewis', 'Logan Ward', 'Hillview Developers', 'Shimla', 'Site AM', 6000000.00, 'On Hold', 10, 'XYZ Construction', 'Escaping to tranquility and natural beauty'),

('Ocean Breeze Resort', 'commercial', 'Resort with refreshing ocean breeze', '2025-08-05', '2023-11-30', 'Noah Anderson', 'Henry Harris', 'Oceanfront Hospitality', 'Goa', 'Site AN', 7000000.00, 'Ongoing', 50, 'ABC Builders', 'A blissful retreat by the sea'),

('Metropolitan Apartments', 'residential', 'Urban apartments with metropolitan charm', '2025-09-15', '2023-10-31', 'Mia Roberts', 'Liam Turner', 'Urban Developers', 'Chennai', 'Site AO', 8000000.00, 'Completed', 100, 'XYZ Construction', 'Modern living spaces in a bustling city'),

('Tech Tower Two', 'commercial', 'Cutting-edge tech tower', '2025-10-01', '2023-12-31', 'Ella Wilson', 'Aiden Clark', 'Tech Innovations', 'Noida', 'Site AP', 10000000.00, 'Yet to Start', 0, 'ABC Builders', 'A landmark for technological advancements'),

('Riverfront Residences', 'residential', 'Riverside residences with serene views', '2025-11-15', '2023-12-31', 'Oliver Adams', 'Logan Harris', 'Riverfront Builders', 'Lucknow', 'Site AQ', 12000000.00, 'Ongoing', 70, 'XYZ Construction', 'Living in harmony with nature by the river'),

('Cityscape Square', 'commercial', 'Dynamic cityscape-integrated complex', '2025-12-01', '2023-10-31', 'Sophia Anderson', 'Henry Turner', 'Cityscape Developers', 'Jaipur', 'Site AR', 5000000.00, 'Completed', 100, 'ABC Builders', 'An iconic destination blending cityscape and commercial spaces');