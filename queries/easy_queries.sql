#Easy Queries
-- 1. Get names and emails of all customers
SELECT first_name, last_name, email FROM customer;

-- 2. List all available movie ratings
SELECT DISTINCT rating FROM film;

-- 3. Get the first 10 paying customers
SELECT customer_id FROM payment ORDER BY payment_date LIMIT 10;

-- 4. Count movies with runtime ≤ 50 minutes
SELECT COUNT(title) FROM film WHERE length <= 50;

-- 5. Count actors with first name starting with 'P'
SELECT COUNT(*) FROM actor WHERE first_name LIKE 'P%';

-- 6. LEFT JOIN: List all customers and their payments
SELECT c.customer_id, c.first_name, p.amount
FROM customer c
LEFT JOIN payment p ON c.customer_id = p.customer_id;
