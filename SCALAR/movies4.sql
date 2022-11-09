# Q4. Actors and their Movies
# SQL
# Solved
# Write a SQL Query to find the name of those movies where one or more actors acted in two or more movies.

# Output Schema:

# movie_title
# NOTE:

# Output column name has to match the given output schema.
# Any name is the concatenation(without any delimiter) of first and last name if present
# (E.g. if director_first_name is 'Alfred' and director_last_name is 'Hitchcock' then director_name is 'AlfredHitchcock')
# Example Output:

# movie_title
# Vertigo


select movie_title 
from movies
inner join movies_cast
on movies.movie_id=movies_cast.movie_id
where movies_cast.actor_id = 
(SELECT actor_id
FROM movies_cast
GROUP BY actor_id
ORDER BY count(actor_id) DESC
LIMIT 1);
