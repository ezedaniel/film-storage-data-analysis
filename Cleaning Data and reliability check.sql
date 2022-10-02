--checking duplicates on film table-
  SELECT title, release_year, description, length, rating,
  COUNT (*)
  FROM film
  GROUP BY title, release_year, description, length, rating
  HAVING COUNT (*) > 1;

--no dublicates--
