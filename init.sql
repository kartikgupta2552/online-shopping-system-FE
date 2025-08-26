-- Initialize database with some basic data
-- This runs automatically when MySQL container starts for the first time

USE apnacart;

-- Create roles if they don't exist
INSERT IGNORE INTO roles (id, name) VALUES 
(1, 'CUSTOMER'),
(2, 'ADMIN'), 
(3, 'DELIVERY_PARTNER');

-- Create a default admin user (password is 'admin123' hashed with BCrypt)
-- You should change this password in production!
INSERT IGNORE INTO users (id, username, email, password, role_id, status) VALUES 
(1, 'admin', 'admin@apnacart.com', '$2a$10$DowJones2024$HashThisPasswordProperly', 2, 'ACTIVE');

-- Add some sample categories
INSERT IGNORE INTO categories (id, name, description) VALUES 
(1, 'Electronics', 'Electronic gadgets and devices'),
(2, 'Clothing', 'Fashion and apparel'),
(3, 'Books', 'Books and literature');

