--CREATE DATABASE [HolaResidence]
USE [HolaResidence]

CREATE TABLE roles (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE users (
    id INT IDENTITY(1,1) PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    fullname VARCHAR(255) NOT NULL,
    birthday DATE,
    gender VARCHAR(10),
    phone VARCHAR(20),
    email VARCHAR(255) UNIQUE,
    images VARCHAR(MAX),
    role_id INT FOREIGN KEY REFERENCES roles(id),
    status VARCHAR(50) DEFAULT 'active'
);

CREATE TABLE categories (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE provinces (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE districts (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    province_id INT FOREIGN KEY REFERENCES provinces(id)
);

CREATE TABLE communes (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    district_id INT FOREIGN KEY REFERENCES districts(id)
);

CREATE TABLE rent_houses (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(255),
    price DECIMAL(12, 2),
    acreage DECIMAL(10, 2),
    bedroom INT,
    bathroom INT,
    description TEXT,
    image VARCHAR(MAX),
    rate_point DECIMAL(3, 2),
    province_id INT FOREIGN KEY REFERENCES provinces(id),
    district_id INT FOREIGN KEY REFERENCES districts(id),
    commune_id INT FOREIGN KEY REFERENCES communes(id),
    category_id INT FOREIGN KEY REFERENCES categories(id),
    user_id INT FOREIGN KEY REFERENCES users(id),
    status VARCHAR(50) DEFAULT 'available',
	create_date DATE,
	expiry_date DATE
);

CREATE TABLE house_rates (
    id INT IDENTITY(1,1) PRIMARY KEY,
    date DATE,
    image VARCHAR(MAX),
    message TEXT,
    rating_point DECIMAL(3, 2),
    house_id INT FOREIGN KEY REFERENCES rent_houses(id),
    user_id INT FOREIGN KEY REFERENCES users(id)
);

-- Chèn dữ liệu vào bảng roles
INSERT INTO roles (name) VALUES ('Admin');
INSERT INTO roles (name) VALUES ('User');

-- Chèn dữ liệu vào bảng provinces
INSERT INTO provinces (name) VALUES ('Province A');
INSERT INTO provinces (name) VALUES ('Province B');

-- Chèn dữ liệu vào bảng districts
INSERT INTO districts (name, province_id) VALUES ('District X', 1);
INSERT INTO districts (name, province_id) VALUES ('District Y', 1);
INSERT INTO districts (name, province_id) VALUES ('District Z', 2);

-- Chèn dữ liệu vào bảng communes
INSERT INTO communes (name, district_id) VALUES ('Commune 1', 1);
INSERT INTO communes (name, district_id) VALUES ('Commune 2', 1);
INSERT INTO communes (name, district_id) VALUES ('Commune 3', 2);
INSERT INTO communes (name, district_id) VALUES ('Commune 4', 3);

-- Chèn dữ liệu vào bảng categories
INSERT INTO categories (name) VALUES ('Category A');
INSERT INTO categories (name) VALUES ('Category B');

-- Chèn dữ liệu vào bảng users
INSERT INTO users (username, password, fullname, email, role_id, status)
VALUES ('admin', 'adminpassword', 'Admin User', 'admin@example.com', 1, 'active');

-- Chèn dữ liệu vào bảng rent_houses
INSERT INTO rent_houses (name, price, acreage, bedroom, bathroom, description, rate_point, province_id, district_id, commune_id, category_id, user_id, status)
VALUES ('House 1', 1500.00, 100.00, 3, 2, 'Description of House 1', 4.5, 1, 1, 1, 1, 1, 'available');
INSERT INTO rent_houses (name, price, acreage, bedroom, bathroom, description, rate_point, province_id, district_id, commune_id, category_id, user_id, status)
VALUES ('House 2', 2000.00, 120.00, 4, 3, 'Description of House 2', 4.0, 2, 3, 4, 2, 1, 'available');

INSERT INTO rent_houses (name, price, acreage, bedroom, bathroom, description, rate_point, province_id, district_id, commune_id, category_id, user_id, status)
VALUES 
    ('House 3', 1600.00, 110.00, 4, 3, 'Description of House 3', 4.4, 1, 1, 1, 1, 1, 'available'),
    ('House 4', 1700.00, 120.00, 5, 4, 'Description of House 4', 4.3, 1, 1, 1, 1, 1, 'available'),
    ('House 5', 1800.00, 130.00, 6, 5, 'Description of House 5', 4.2, 1, 1, 1, 1, 1, 'available'),
    ('House 6', 1900.00, 140.00, 7, 6, 'Description of House 6', 4.1, 1, 1, 1, 1, 1, 'available'),
    ('House 7', 2000.00, 150.00, 8, 7, 'Description of House 7', 4.0, 1, 1, 1, 1, 1, 'available'),
    ('House 8', 2100.00, 160.00, 9, 8, 'Description of House 8', 3.9, 1, 1, 1, 1, 1, 'available'),
    ('House 9', 2200.00, 170.00, 10, 9, 'Description of House 9', 3.8, 1, 1, 1, 1, 1, 'available'),
    ('House 10', 2300.00, 180.00, 11, 10, 'Description of House 10', 3.7, 1, 1, 1, 1, 1, 'available'),
    ('House 11', 2400.00, 190.00, 12, 11, 'Description of House 11', 3.6, 1, 1, 1, 1, 1, 'available'),
    ('House 12', 2500.00, 200.00, 13, 12, 'Description of House 12', 3.5, 1, 1, 1, 1, 1, 'available'),
    ('House 13', 2600.00, 210.00, 14, 13, 'Description of House 13', 3.4, 1, 1, 1, 1, 1, 'available'),
    ('House 14', 2700.00, 220.00, 15, 14, 'Description of House 14', 3.3, 1, 1, 1, 1, 1, 'available');