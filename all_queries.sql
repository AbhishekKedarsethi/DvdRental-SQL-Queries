**Easy**
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

**Medium**
-- 7. Top 5 customers by total payment
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;

-- 8. Count of films with "Truman" in the title
SELECT COUNT(*) FROM film WHERE title ILIKE '%Truman%';

-- 9. Count unique districts customers are from
SELECT COUNT(DISTINCT district) FROM address;

-- 10. Average replacement cost per movie rating
SELECT rating, AVG(replacement_cost) FROM film GROUP BY rating;

-- 11. Customers who spent > $100 with staff ID = 2
SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100;

-- 12. Movies that actor Nick Wahlberg appeared in
SELECT title FROM actor
JOIN film_actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film_actor.film_id = film.film_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg';

**Hard**
-- 13. Rank customers by total spend using RANK()
SELECT customer_id, SUM(amount) AS total_spent,
       RANK() OVER (ORDER BY SUM(amount) DESC) AS rank
FROM payment
GROUP BY customer_id;

-- 14. Monthly revenue and month-over-month growth
WITH monthly_revenue AS (
  SELECT DATE_TRUNC('month', payment_date) AS month,
         SUM(amount) AS revenue
  FROM payment
  GROUP BY month
)
SELECT month, revenue,
       revenue - LAG(revenue) OVER (ORDER BY month) AS revenue_growth
FROM monthly_revenue;

-- 15. Count number of films per rating using CASE
SELECT
  SUM(CASE WHEN rating = 'G' THEN 1 ELSE 0 END) AS G,
  SUM(CASE WHEN rating = 'PG' THEN 1 ELSE 0 END) AS PG,
  SUM(CASE WHEN rating = 'PG-13' THEN 1 ELSE 0 END) AS PG13,
  SUM(CASE WHEN rating = 'R' THEN 1 ELSE 0 END) AS R
FROM film;

-- 16. Customers who rented every film
SELECT customer_id
FROM rental
GROUP BY customer_id
HAVING COUNT(DISTINCT inventory_id) = (SELECT COUNT(*) FROM inventory);

-- 17. Recursive CTE to generate numbers 1 to 10
WITH RECURSIVE nums AS (
  SELECT 1 AS n
  UNION ALL
  SELECT n + 1 FROM nums WHERE n < 10
)
SELECT * FROM nums;

-- 18. TRANSACTION block (example)
BEGIN;
UPDATE inventory SET last_update = NOW() WHERE inventory_id = 1;
DELETE FROM rental WHERE inventory_id = 1;
COMMIT;

