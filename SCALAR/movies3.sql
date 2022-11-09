# Q3. Short Films
https://www.scaler.com/academy/mentee-dashboard/class/7330/assignment/problems/1150?navref=cl_tt_nv
# SQL
# Solved
# Write a SQL Query to find those lowest duration movies along with the year, director's name(first and last name combined), actor's name(first and last name combined) and his/her role in that production.

# Output Schema:

# movie_title,movie_year,director_name,actor_name,role
# NOTE:

# Output column name has to match the given output schema.
# Any name is the concatenation(without any delimiter) of first and last name if present
# (E.g. if director_first_name is 'Alfred' and director_last_name is 'Hitchcock' then director_name is 'AlfredHitchcock')
# Example Output:

# movie_title,movie_year,director_name,actor_name,role
# Vertigo,1958,AlfredHitchcock,JamesStewart,JohnFerguson

SELECT movies.movie_title,movies.movie_year, 
CONCAT(directors.director_first_name, directors.director_last_name) AS director_name,
CONCAT(actors.actor_first_name, actors.actor_last_name) AS actor_name,
movies_cast.role as role
FROM movies
INNER JOIN movies_directors 
ON movies.movie_id=movies_directors.movie_id
INNER JOIN directors
on movies_directors.director_id = directors.director_id
INNER JOIN movies_cast
on movies.movie_id=movies_cast.movie_id
INNER JOIN actors
on movies_cast.actor_id=actors.actor_id
where movies.movie_time = (SELECT MIN(movie_time) FROM movies);;
