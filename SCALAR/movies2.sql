-- Q2. Movie Character
-- SQL
-- Solved
-- Write a SQL Query to find the movie_title and name of director (first and last names combined) who directed a movie that casted a role as 'SeanMaguire'.

-- Output Schema:

-- director_name,movie_title
-- NOTE:

-- Output column name has to match the given output schema.
-- Any name is the concatenation(without any delimiter) of first and last name if present
-- (E.g. if director_first_name is 'Alfred' and director_last_name is 'Hitchcock' then director_name is 'AlfredHitchcock')
-- Example Output:

-- director_name,movie_title
-- AlfredHitchcock,Vertigo

SELECT  CONCAT(directors.director_first_name, directors.director_last_name) AS director_name , movies.movie_title
FROM directors
INNER JOIN movies_directors 
ON directors.director_id=movies_directors.director_id
INNER JOIN movies
on movies_directors.movie_id = movies.movie_id
INNER JOIN movies_cast
on movies.movie_id=movies_cast.movie_id
where movies_cast.role like 'SeanMaguire';
