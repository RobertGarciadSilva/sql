
-- Write a query in SQL to find the name and year of the movies. 

SELECT mov_title, mov_year FROM movie;

-- Write a query in SQL to find the year when the movie American Beauty released.

SELECT mov_year FROM movie WHERE mov_title = 'American Beauty';

-- Write a query in SQL to find the movie which was released in the year 1999. 

SELECT mov_title FROM movie WHERE mov_year = 1999;

-- Write a query in SQL to find the movies which was released before 1998. 

SELECT mov_title AS movies_before_1998 FROM movie WHERE mov_year < 1998;

-- Write a query in SQL to return the name of all reviewers and name of movies together in a single list.

SELECT mov_title FROM movie UNION SELECT rev_name FROM reviewer;

-- Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their rating. 

SELECT rev_name 
FROM reviewer AS T, rating AS S 
WHERE T.rev_id = S.rev_id 
AND rev_stars >= 7 
AND T.rev_name IS NOT NULL;

-- Write a query in SQL to find the titles of all movies that have no ratings. 

-- FIRST WHAY

(SELECT mov_title AS no_rating
FROM movie)
EXCEPT 
(SELECT mov_title 
FROM movie, rating 
WHERE movie.mov_id = rating.mov_id); 

-- Second WHAY

SELECT mov_title AS no_rating2
FROM movie
WHERE mov_id NOT IN (
    SELECT mov_id
    FROM rating
);



-- Write a query in SQL to find the titles of the movies with ID 5, 7, 17.

SELECT mov_title 
FROM movie
WHERE mov_id IN (5, 7, 17);

-- Write a query in SQL to find the list of all those movies with year which include the words Boogie Nights. 

SELECT mov_title
FROM movie
WHERE mov_title iLIKE '%Boogie Nights%';

-- Write a query in SQL to find the ID number for the actor whose first name is 'Woody' and the last name is 'Allen'. 

SELECT act_id
FROM actor
WHERE act_fname = 'Woody' AND act_lname = 'Allen';



-- Write a query in SQL to list all the information of the actors who played a role in the movie 'Annie Hall'

SELECT actor.act_id, act_fname, act_lname, act_gender 
FROM actor, movie_cast
WHERE actor.act_id = movie_cast.act_id 
AND mov_id IN (
    SELECT mov_id 
    FROM movie
    WHERE mov_title = 'Annie Hall'
);

SELECT * 
FROM actor
WHERE act_id IN (
SELECT act_id
FROM movie_cast, movie
WHERE movie.mov_id = movie_cast.mov_id
AND mov_title = 'Annie Hall');

SELECT * 
FROM actor
WHERE act_id IN (
    SELECT act_id 
    FROM movie_cast
    WHERE mov_id IN (
        SELECT mov_id
        FROM movie
        WHERE mov_title = 'Annie Hall'
    )
);


-- Write a query in SQL to find the name of the director (first and last names) who directed a movie that casted a role for 'Eyes Wide Shut'. (using subquery)

SELECT dir_fname, dir_lname
FROM director
WHERE dir_id IN (
    SELECT dir_id
    FROM movie_direction
    WHERE mov_id IN (
        SELECT mov_id
        FROM movie
        WHERE mov_title = 'Eyes Wide Shut'
    )
);

-- rigth whay

SELECT dir_fname, dir_lname
FROM director
WHERE dir_id IN (
    SELECT dir_id
    FROM movie_direction
    WHERE mov_id IN (
        SELECT mov_id
        FROM movie_cast
        WHERE role  = ANY (
            SELECT role
            FROM movie_cast
            WHERE mov_id IN (
                SELECT mov_id 
                FROM movie
                WHERE mov_title = 'Eyes Wide Shut'
            )
        )

    )
);

-- 'IN' is equivalent to '= ANY', see 
-- https://www.postgresql.org/docs/9.2/functions-subquery.html#FUNCTIONS-SUBQUERY-ANY-SOME


-- Write a query in SQL to list all the movies which released in the country other than UK.

(SELECT mov_title
FROM movie)
EXCEPT
(SELECT mov_title
FROM movie
WHERE mov_rel_country = 'UK');

SELECT mov_title
FROM movie
WHERE mov_rel_country <> 'UK';

SELECT mov_title
FROM movie
WHERE mov_id NOT IN (
    SELECT mov_id
    FROM movie
    WHERE mov_rel_country = 'UK'
);

-- Write a query in SQL to find the movie title, year, date of release, director and actor for those movies which reviewer is unknown.

SELECT mov_title, mov_year, mov_dt_rel, dir_fname, dir_lname, act_fname, act_lname
FROM movie, director, actor, movie_direction, movie_cast, rating, reviewer
WHERE movie.mov_id = movie_cast.mov_id
AND movie_cast.act_id = actor.act_id
AND movie.mov_id = movie_direction.mov_id
AND movie_direction.dir_id = director.dir_id
AND movie.mov_id = rating.mov_id
AND rating.rev_id = reviewer.rev_id
AND rev_name IS NULL;


-- Write a query in SQL to find the titles of all movies directed by the director whose first and last name are Woody Allen.

SELECT mov_title
FROM movie
WHERE mov_id IN (
    SELECT mov_id
    FROM movie_direction
    WHERE dir_id IN (
        SELECT dir_id
        FROM director
        WHERE dir_fname = 'Woody' AND dir_lname = 'Allen'
    )
);

SELECT mov_title 
FROM movie, movie_direction, director
WHERE movie.mov_id = movie_direction.mov_id
AND movie_direction.dir_id = director.dir_id
AND dir_fname = 'Woody' AND dir_lname = 'Allen';


-- Write a query in SQL to find all the years which produced at least one movie and that received a rating of more than 3 stars. Show the results in increasing order.

SELECT DISTINCT mov_year
FROM movie
WHERE mov_id IN (
    (SELECT mov_id
    FROM rating
    WHERE rev_stars > 3) 
)
ORDER BY mov_year ASC;


-- Write a query in SQL to find the titles of all movies that have no ratings. 

SELECT mov_title
FROM movie
WHERE mov_id NOT IN (
    SELECT mov_id
    FROM rating
);

-- Write a query in SQL to find the names of all reviewers who have ratings with a NULL value.

SELECT DISTINCT rev_name
FROM reviewer
WHERE rev_id IN (
    SELECT rev_id
    FROM rating
    WHERE rev_stars IS NULL
);

