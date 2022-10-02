--checking duplicates on film table-
  SELECT title, release_year, description, length, rating,
  COUNT (*)
  FROM film
  GROUP BY title, release_year, description, length, rating
  HAVING COUNT (*) > 1;
--no dublicates--

--checking non-uniform values--
  SELECT DISTINCT rating
  FROM film;
  
  --update the values that representa a "G" ratingto be consistent--
  UPDATE film
  SET rating  = 'G'
  WHERE rating IN ('gen', 'g', 'General')
  
