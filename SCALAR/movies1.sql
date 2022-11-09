# Write a SQL Query to find the name of all reviewers who have rated their ratings with a NULL value.

# Output Schema:

# reviewer_name
# NOTE: Output column name has to match the given output schema.

# Example Output:

# reviewer_name
# MaxPlank
# NeilsBohr
# Schrodinger

SELECT reviewers.reviewer_name
FROM reviewers
INNER JOIN ratings 
ON ratings.reviewer_id=reviewers.reviewer_id
where ratings.reviewer_stars is NULL;
