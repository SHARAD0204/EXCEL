-- Topics Covered
/*CREATE DATABASE
CREATE TABLE
INSERT
SELECT
WHERE
ORDER BY
Logical Operators: AND, OR, NOT*/ --

-- Create a database and table using the following structure --

CREATE DATABASE SalesAnalyticsDB;

-- Create a customers table --

CREATE TABLE customers (
    id INT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    age INT,
    country VARCHAR(50),
    amount_spend INT
);

-- Task 2 — Create the Customer Table --

INSERT INTO customers (id, user_name, age, country, amount_spend)
VALUES
(1, 'Aarav Patel', 22, 'India', 120),
(2, 'Emma Johnson', 35, 'USA', 2450),
(3, 'Liam Smith', 28, 'UK', 680),
(4, 'Sophia Garcia', 45, 'Spain', 3200),
(5, 'Noah Brown', 19, 'Canada', 75),
(6, 'Olivia Chen', 52, 'China', 5100),
(7, 'Ethan Miller', 31, 'Australia', 1350),
(8, 'Mia Wilson', 67, 'USA', 420),
(9, 'Arjun Mehta', 40, 'India', 2800),
(10, 'Isabella Rossi', 26, 'Italy', 950),
(11, 'Lucas Martin', 58, 'France', 4750),
(12, 'Ava Thompson', 73, 'Canada', 180),
(13, 'Raj Sharma', 34, 'India', 1100),
(14, 'Charlotte Davis', 49, 'UK', 3850),
(15, 'Daniel Lee', 24, 'Australia', 250);

-- Task 3 — Load Customer Data --

-- Data Exploration --
-- Task 4 — View the Complete Dataset --

SELECT *
FROM customers;

-- Task 5 — Customer Information --

SELECT user_name, age, country
FROM customers;

-- Task 6 — Customer Spending Analysis --

SELECT user_name, country, amount_spend
FROM customers;

-- Filtering Data Using WHERE --
-- Task 7 — High-Value Customers --

SELECT *
FROM customers
WHERE amount_spend > 1500;

-- Task 8 — Young Customers --

SELECT * 
FROM customers
WHERE age < 30;

-- Task 9 — Customers from India --

SELECT * 
FROM customers
WHERE country = 'India';

-- Task 10 — Low-Spending Customers --

SELECT * 
FROM customers
WHERE amount_spend < 1000;

-- Task 10 — High-Spending Customers --

SELECT * 
FROM customers
WHERE amount_spend > 1000;

-- Logical Operators --
-- Task 11 — High-Spending Young Customers --

SELECT *
FROM customers
WHERE age < 35 AND amount_spend > 1000;

-- Task 12 — Indian High-Value Customers --

SELECT *
FROM customers
WHERE country = 'India' AND amount_spend > 100;

-- Task 13 — Customers from Selected Countries --

SELECT * 
FROM customers
WHERE country = 'India' OR country = 'Usa';

-- Task 14 — High Spenders from Selected Countries --

SELECT *
FROM customers
WHERE (country = 'India' OR country = 'Usa')
AND amount_spend > 1000;

-- Task 15 — Exclude a Country --

SELECT *
FROM customers
WHERE NOT country = 'India';

-- Sorting Data --
-- Task 16 — Sort Customers by Spending --

SELECT *
FROM customers
ORDER BY amount_spend ASC;

-- Task 17 — Identify Top Spenders --

SELECT *
FROM customers
ORDER BY amount_spend DESC;

-- Task 18 — Sort by Age --

SELECT user_name, age, country, amount_spend
FROM customers
ORDER BY age ASC;

-- Analyst-Level Filtering --
-- Task 19 — Target Customer Segment --

SELECT *
FROM customers
WHERE (age BETWEEN 21 AND 50)
AND (amount_spend > 1000)
AND (country = 'India' OR country = 'Usa');

-- Task 20 — Business Analyst Challenge --

SELECT *
FROM customers
WHERE (age >= 30)
 AND (amount_spend > 1200)
 AND NOT (country = 'India')
ORDER BY amount_spend DESC;
