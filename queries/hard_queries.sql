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

