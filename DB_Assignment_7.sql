CREATE DATABASE db_Assignment7;
USE db_Assignment7;

CREATE TABLE tbl_store (
    store_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
    store_city VARCHAR (30) NOT NULL,
    store_region VARCHAR (30) NOT NULL
);

CREATE TABLE tbl_product (
    product_id INT PRIMARY KEY NOT NULL IDENTITY (10,1),
    product_description VARCHAR (30) NOT NULL,
    product_brand VARCHAR (30)
);

CREATE TABLE tbl_sales (
    sale_id INT PRIMARY KEY NOT NULL IDENTITY (100,1),
    sale_store INT NOT NULL CONSTRAINT fk_store_id FOREIGN KEY REFERENCES tbl_store(store_id) ON UPDATE CASCADE ON DELETE CASCADE,
    sale_product INT NOT NULL CONSTRAINT fk_product_id FOREIGN KEY REFERENCES tbl_product(product_id) ON UPDATE CASCADE ON DELETE CASCADE,
    sale_number DECIMAL(4,2) NOT NULL,
    sale_cost DECIMAL(4,2) NOT NULL,
    sale_profit DECIMAL(4,2) NOT NULL
);

INSERT INTO tbl_store
    (store_city, store_region)
    VALUES
    ('New York', 'East'),
    ('Chicago', 'Central'),
    ('Atlanta', 'East'),
    ('Los Angeles', 'West'),
    ('San Francisco', 'West'),
    ('Philadelphia', 'East')
;
SELECT * FROM tbl_store

INSERT INTO tbl_product
    (product_description, product_brand)
    VALUES
    ('Toy Story', 'Wolf Studios'),
    ('Sense and Sensibility', 'Parabuster Inc.'),
    ('Holiday of the Year', 'Wolf Studios'),
    ('Pulp Fiction', 'MKF Studios'),
    ('The Juror', 'MKF Studios'),
    ('From Dusk Till Dawn', 'Parabuster Inc.')
;
SELECT * FROM tbl_product

INSERT INTO tbl_sales
    (sale_store, sale_product, sale_number, sale_cost, sale_profit)
    VALUES
    (1, 10, 2.39, 1.15, 1.24),
    (1, 12, 16.7, 6.91, 9.79),
    (2, 15, 7.16, 2.75, 4.40),
    (3, 12, 4.77, 1.84, 2.93),
    (5, 13, 11.93, 4.59, 7.34),
    (5, 11, 14.31, 5.51, 8.80)
;
SELECT * FROM tbl_sales

SELECT a1.store_city, a3.product_brand
    FROM tbl_store a1
    INNER JOIN tbl_sales a2 ON a2.sale_store = a1.store_id
    INNER JOIN tbl_product a3 ON a3.product_id = a2.sale_product
    WHERE sale_number > 10
; 





