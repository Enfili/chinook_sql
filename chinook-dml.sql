-- select * from track;

-- ALTER TABLE customer ADD sex CHAR(1) NOT NULL CHECK (sex='M' OR sex='F') DEFAULT 'M';
-- SELECT * FROM customer;
--
-- ALTER TABLE customer RENAME COLUMN sex TO gender;
-- SELECT * FROM customer;
--
-- CREATE TABLE car (
--     id INT GENERATED ALWAYS AS IDENTITY,
--     brand VARCHAR(20) NOT NULL,
--     manufacture_year INT CHECK (manufacture_year > 0),
--     owner INT,
--     CONSTRAINT fk_owner FOREIGN KEY(owner) REFERENCES customer(customer_id)
-- );
--
-- SELECT * FROM car;
--
-- DROP TABLE car;

-- SELECT first_name || ' ' || last_name AS name, phone, city FROM customer
--     WHERE phone LIKE '+55%' AND city LIKE 'São%';

-- SELECT first_name, last_name AS name FROM customer
--     WHERE country = 'Czech Republic';

-- SELECT milliseconds / 1000.0 AS seconds FROM track
--     WHERE name = 'One' AND composer = 'U2';

-- SELECT name FROM track
--     WHERE composer LIKE '%U2%';

-- SELECT first_name || ' ' || last_name AS name FROM employee
--     WHERE EXTRACT(MONTH FROM birth_date) = 2;

-- SELECT name, composer FROM track
--     WHERE Lower(name) LIKE '%love%';

-- SELECT first_name || ' ' || last_name AS name, email FROM customer
--     WHERE email LIKE '%gmail.com' OR email LIKE '%yahoo.com';

-- SELECT name, composer, unit_price || '$' AS USD,
--        ROUND(unit_price * 0.76, 2) || '€' AS EUR,
--        ROUND(unit_price * 19.2, 2) || 'CK' AS CZK FROM track;

-- SELECT first_name || ' ' || last_name AS name, country FROM employee
--     WHERE country != 'USA';

-- SELECT first_name || ' ' || last_name AS name, country FROM customer
--     WHERE country IN ('Slovakia', 'Poland', 'Czech Republic', 'Hungary', 'Germany', 'Austria', 'Switzerland');

-- SELECT first_name || ' ' || last_name AS name, birth_date FROM employee
--     WHERE EXTRACT(YEAR FROM birth_date) BETWEEN 1970 AND 1979
--     ORDER BY birth_date ASC;

-- SELECT first_name || ' ' || last_name AS name, birth_date,
--        EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM birth_date) AS age FROM employee;

-- SELECT first_name || ' ' || last_name AS full_name, birth_date FROM employee
--     WHERE EXTRACT(DOY FROM birth_date) BETWEEN EXTRACT(DOY FROM CURRENT_DATE) AND EXTRACT(DOY FROM CURRENT_DATE)+100;

-- UPDATE customer
-- SET gender = 'F'
-- WHERE first_name IN ('Helena', 'Kara', 'Fernanda', 'Jenifer', 'Kathy', 'Heather', 'Julia', 'Martha', 'Ellie', 'Madalena', 'Hannah','Camille', 'Isabelle', 'Emma', 'Puja');

-- INSERT INTO customer(customer_id, first_name, last_name, email)
-- VALUES (100, 'Jaroslav', 'Pavličko', 'jaroslav.pavlicko@gmail.com');

-- INSERT INTO track(track_id, name, media_type_id, milliseconds, unit_price)
-- VALUES
-- (3504, 'Už Asi Nie si', 1, (3 * 60 + 49) * 1000, 0.99),
-- (3505, 'Spočítaj Ma', 1, (4 * 60 + 33) * 1000, 0.99),
-- (3506, '2 Líšky', 1, (6 * 60 + 10) * 1000, 0.99),
-- (3507, 'Cítim', 1, (4 * 60 + 8) * 1000, 0.99),
-- (3508, 'Do Čista', 1, (4 * 60 + 3) * 1000, 0.99),
-- (3509, 'Studňa', 1, (3 * 60 + 42) * 1000, 0.99),
-- (3510, 'Ako Vánok', 1, (3 * 60 + 9) * 1000, 0.99),
-- (3511, 'Rieka', 1, (5 * 60 + 5) * 1000, 0.99),
-- (3512, 'Ráno', 1, (5 * 60 + 22) * 1000, 0.99),
-- (3513, 'Nahý II.', 1, (3 * 60 + 59) * 1000, 0.99),
-- (3514, 'Planý Poplach Duše', 1, (5 * 60 + 39) * 1000, 0.99);