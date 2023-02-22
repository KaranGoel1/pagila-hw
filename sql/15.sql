/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT category.name, COUNT(*) AS "sum" FROM film INNER JOIN film_category ON film.film_id = film_category.film_id INNER JOIN category ON film_category.category_id = category.category_id INNER JOIN language ON language.language_id = film.language_id WHERE language.name = 'English' GROUP BY category.name;
