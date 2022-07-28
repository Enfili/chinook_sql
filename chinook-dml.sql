-- select * from track;

-- ALTER TABLE customer ADD sex CHAR(1) NOT NULL CHECK (sex='M' OR sex='F') DEFAULT 'M';
-- SELECT * FROM customer;

-- ALTER TABLE customer RENAME COLUMN sex TO gender;
-- SELECT * FROM customer;

-- CREATE TABLE car (
--     id INT GENERATED ALWAYS AS IDENTITY,
--     brand VARCHAR(20) NOT NULL,
--     manufacture_year INT CHECK (manufacture_year > 0),
--     owner INT,
--     CONSTRAINT fk_customer FOREIGN KEY(owner) REFERENCES customer(customer_id)
-- );

-- SELECT * FROM car;

-- DROP TABLE car;
