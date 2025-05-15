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

