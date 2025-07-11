--Create DB
CREATE DATABASE product_catalog;

--Create table
CREATE TABLE IF NOT EXISTS product(
  id SERIAL PRIMARY KEY,
  retailer VARCHAR(255),
  brand VARCHAR(255),
  model VARCHAR(255),
  product_name VARCHAR(255) NOT NULL,
  product_description TEXT,
  price NUMERIC(10, 2)
);


-- Insert sample data
INSERT INTO product(retailer, brand, model, product_name, product_description, price) VALUES
('Apple Store', 'Apple', 'IPH-14', 'iPhone 14 Pro', '6.1-inch display, A16 Bionic chip, triple-camera system.', 999.99),
('Dell', 'Dell', 'XPS-13-9310', 'Dell XPS 13 Laptop', '13.4" FHD+, Intel i7, 16GB RAM, 512GB SSD.', 1199.99),
('Nike', 'Nike', 'AIRMAX-270', 'Nike Air Max 270', 'Lightweight sneakers with Air Max cushioning.', 150.00),
('Sony', 'Sony', 'WH-1000XM5', 'Sony WH-1000XM5 Headphones', 'Wireless noise-cancelling over-ear headphones.', 349.99),
('KitchenAid', 'KitchenAid', 'KSM150PSER', 'KitchenAid Stand Mixer', '5-quart tilt-head mixer with multiple attachments.', 379.99),
('Samsung Store', 'Samsung', 'RF28T5001SR', 'Samsung 28 cu. ft. Refrigerator', 'French door, fingerprint resistant stainless steel.', 1299.99),
('Fitbit', 'Fitbit', 'Charge 5', 'Fitbit Charge 5', 'Advanced fitness tracker with built-in GPS.', 179.95),
('LEGO', 'LEGO', '10276', 'LEGO Titanic Building Set', 'Detailed replica with over 9,000 pieces.', 629.99),
('Sony', 'Sony', 'A7 IV', 'Sony Alpha a7 IV Camera', 'Full-frame mirrorless camera with 33MP sensor.', 2499.99),
('Canon', 'Canon', 'EOS R6', 'Canon EOS R6 Camera', 'Full-frame mirrorless with advanced autofocus.', 2499.00),
('Patagonia', 'Patagonia', 'Ms Nano Puff Jacket', 'Mens Nano Puff Jacket', 'Lightweight insulated jacket, water-resistant.', 199.00),
('Samsung Store', 'Samsung', 'Galaxy Tab S8', 'Samsung Galaxy Tab S8', '11-inch Android tablet with S Pen.', 699.99),
('Bose', 'Bose', 'QC45', 'Bose QuietComfort 45', 'Noise-cancelling wireless headphones with great comfort.', 329.00),
('Amazon', 'AmazonBasics', 'AB-USB-C-CABLE', 'AmazonBasics USB-C Cable', 'Durable 6-foot USB-C to USB-C charging cable.', 9.99),
('Google Store', 'Google', 'Pixel 7', 'Google Pixel 7', 'Smartphone with Google Tensor chip and advanced camera.', 599.00),
('Dyson', 'Dyson', 'V11 Torque Drive', 'Dyson V11 Cordless Vacuum', 'Powerful cordless vacuum cleaner with intelligent cleaning modes.', 599.99),
('GoPro', 'GoPro', 'HERO11 Black', 'GoPro HERO11 Black', 'Waterproof action camera with HyperSmooth stabilization.', 499.99);
