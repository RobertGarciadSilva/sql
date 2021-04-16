
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

-- Write a query in SQL to return the reviewer name, movie title, and stars for those movies which reviewed by a reviewer and must be rated. Sort the result by reviewer name, movie title, and number of stars.


SELECT rev_name, mov_title, rev_stars
FROM movie, rating, reviewer
WHERE movie.mov_id = rating.mov_id 
AND rating.rev_id = reviewer.rev_id
AND reviewer.rev_name IS NOT NULL
AND rating.rev_stars IS NOT NULL
ORDER BY rev_name, mov_title, rev_stars;

-- using joins
SELECT rev_name, mov_title, rev_stars
FROM movie NATURAL JOIN rating NATURAL JOIN reviewer
WHERE reviewer.rev_name IS NOT NULL
AND rating.rev_stars IS NOT NULL
ORDER BY rev_name, mov_title, rev_stars;

SELECT rev_name, mov_title, rev_stars
FROM movie JOIN rating USING (mov_id) NATURAL JOIN reviewer
WHERE reviewer.rev_name IS NOT NULL
AND rating.rev_stars IS NOT NULL
ORDER BY rev_name, mov_title, rev_stars;

SELECT rev_name, mov_title, rev_stars
FROM movie JOIN rating ON (movie.mov_id=rating.mov_id) NATURAL JOIN reviewer
WHERE reviewer.rev_name IS NOT NULL
AND rating.rev_stars IS NOT NULL
ORDER BY rev_name, mov_title, rev_stars;

-- Write a query in SQL to find the reviewer's name and the title of the movie for those reviewers who rated more than one movies.



SELECT rev_name, mov_title
FROM movie NATURAL JOIN rating NATURAL JOIN reviewer 
WHERE rating.rev_id IN (
    SELECT rev_id
    FROM rating
    GROUP BY rev_id
    HAVING COUNT(*) > 1
);

-- Write a query in SQL to find the movie title, and the highest number of stars that movie received and arranged the result according to the group of a movie and the movie title appear alphabetically in ascending order. 

SELECT mov_title, MAX(rev_stars) AS highest_star FROM movie NATURAL JOIN rating WHERE rev_stars IS NOT NULL GROUP BY mov_title ORDER BY mov_title;


-- Write a query in SQL to find the names of all reviewers who rated the movie American Beauty. 

SELECT DISTINCT rev_name 
FROM reviewer
WHERE rev_id IN (
    SELECT reviewer.rev_id
    FROM reviewer, movie, rating
    WHERE movie.mov_id = rating.mov_id
    AND rating.rev_id = reviewer.rev_id
    AND movie.mov_title = 'American Beauty'
);

SELECT DISTINCT rev_name
FROM reviewer NATURAL JOIN movie NATURAL JOIN rating
WHERE mov_title = 'American Beauty';


-- Write a query in SQL to find the titles of all movies which have been reviewed by anybody except by Paul Monks. 

(SELECT DISTINCT mov_title
FROM movie NATURAL JOIN rating)
EXCEPT
(SELECT mov_title
FROM movie NATURAL JOIN rating NATURAL JOIN reviewer
WHERE rev_name LIKE '%Paul Monks%')
ORDER BY mov_title;

SELECT DISTINCT mov_title
FROM movie NATURAL JOIN rating NATURAL JOIN reviewer
WHERE rev_name NOT LIKE '%Paul Monks%' OR  rev_name IS NULL /* WHERE rev_name NOT LINK "NULL" = UNKNOWN, If the where clause predicate evaluates to either false or unknown for a tuple, that tuple is not added to the result.*/
ORDER BY mov_title;


SELECT DISTINCT mov_title
FROM movie NATURAL JOIN rating NATURAL JOIN reviewer
WHERE rev_id NOT IN (
    SELECT rev_id 
    FROM reviewer 
    WHERE rev_name LIKE '%Paul Monks%'
) ORDER BY mov_title;


-- Write a query in SQL to return the reviewer name, movie title, and number of stars for those movies which rating is the lowest one.

SELECT rev_name, mov_title, rev_stars
FROM movie NATURAL JOIN rating NATURAL JOIN reviewer
WHERE rev_stars = (
    SELECT MIN(rev_stars)
    FROM rating
);

-- Write a query in SQL to find the titles of all movies directed by James Cameron. 

SELECT mov_title
FROM movie NATURAL JOIN movie_direction NATURAL JOIN director
WHERE dir_fname LIKE '%James%' AND dir_lname LIKE '%Cameron%';


-- Write a query in SQL to find the name of those movies where one or more actors acted in two or more movies.

SELECT mov_title
FROM movie NATURAL JOIN movie_cast 
WHERE act_id IN (
    SELECT act_id 
    FROM movie_cast NATURAL JOIN actor
    GROUP BY act_id
    HAVING COUNT(act_id) >= 2
);

SELECT mov_title 
FROM movie 
WHERE mov_id IN (
SELECT mov_id 
FROM movie_cast 
WHERE act_id IN (
SELECT act_id 
FROM actor 
WHERE act_id IN (
SELECT act_id 
FROM movie_cast GROUP BY act_id 
HAVING COUNT(act_id)>1)));



/*Write a query in SQL to find the name of all reviewers who have rated their ratings with a NULL value.*/

SELECT rev_name
FROM reviewer NATURAL JOIN rating 
WHERE num_o_ratings IS NULL;

SELECT rev_name
FROM reviewer JOIN rating USING(rev_id)
WHERE num_o_ratings IS NULL;

SELECT rev_name
FROM reviewer JOIN rating ON reviewer.rev_id = rating.rev_id
WHERE num_o_ratings IS NULL;


/*Write a query in SQL to list the first and last names of all the actors who were cast in the movie 'Annie Hall', and the roles they played in that production.*/

SELECT act_fname, act_lname, role
FROM actor, movie_cast
WHERE movie_cast.act_id = actor.act_id 
AND actor.act_id IN (
    SELECT act_id 
    FROM movie_cast
    WHERE mov_id = (SELECT mov_id FROM movie WHERE mov_title = 'Annie Hall')    
);

SELECT act_fname, act_lname, role
FROM actor, movie_cast, movie
WHERE actor.act_id = movie_cast.act_id AND movie_cast.mov_id = movie.mov_id
AND mov_title = 'Anne Hall';

SELECT act_fname, act_lname, role
FROM actor NATURAL JOIN movie_cast JOIN movie USING (mov_id)
WHERE mov_title = 'Annie Hall';


/*Write a query in SQL to find the name of movie and director (first and last names) who directed a movie that casted a role for 'Eyes Wide Shut'.*/

SELECT mov_title, CONCAT(dir_fname, ' ', dir_lname) AS dir_name
FROM movie NATURAL JOIN movie_direction NATURAL JOIN director NATURAL JOIN movie_cast
WHERE role IS NOT NULL AND 
mov_title = 'Eyes Wide Shut';


/*Write a query in SQL to find the name of movie and director (first and last names) who directed a movie that casted a role as Sean Maguire.*/
SELECT mov_title, CONCAT(dir_fname, ' ', dir_lname) AS dir_name
FROM movie NATURAL JOIN movie_direction NATURAL JOIN director NATURAL JOIN movie_cast
WHERE role = 'Sean Maguire';


/*Write a query in SQL to list all the actors who have not acted in any movie between 1990 and 2000.*/

SELECT CONCAT(act_fname, ' ', act_lname) AS act_name
FROM actor JOIN movie_cast USING(act_id) JOIN movie USING(mov_id)
WHERE mov_year < 1990 OR mov_year > 2000;

SELECT CONCAT(act_fname, ' ', act_lname) AS act_name
FROM actor JOIN movie_cast USING(act_id) JOIN movie USING(mov_id)
WHERE mov_year NOT BETWEEN 1990 AND 2000;


/*Write a query in SQL to list first and last name of all the directors with number of genres movies the directed with genres name, and arranged the result alphabetically with the first and last name of the director. */



SELECT dir_fname, dir_lname, gen_title, COUNT(gen_title) AS count_gen
FROM director NATURAL JOIN movie_direction NATURAL JOIN movie NATURAL JOIN movie_genres NATURAL JOIN genres
GROUP BY dir_fname, dir_lname, gen_title
ORDER BY dir_fname, dir_lname;


/*Write a query in SQL to list all the movies with year and genres.*/

SELECT mov_title, mov_year, gen_title
FROM movie LEFT JOIN movie_genres USING (mov_id) LEFT JOIN genres USING (gen_id)
ORDER BY mov_title;


/*Write a query in SQL to list all the movies with year, genres, and name of the director.*/

SELECT mov_title, mov_year, gen_title, dir_fname, dir_lname
FROM movie NATURAL LEFT JOIN movie_genres 
NATURAL LEFT JOIN genres
NATURAL LEFT JOIN movie_direction
NATURAL LEFT JOIN director; 


/*Write a query in SQL to list all the movies with title, year, date of release, movie duration, and first and last name of the director which released before 1st january 1989, and sort the result set according to release date from highest date to lowest. */

SELECT mov_title, mov_year, mov_dt_rel, mov_time, dir_fname, dir_lname
FROM movie NATURAL LEFT JOIN movie_direction
NATURAL LEFT JOIN director
WHERE mov_dt_rel < '1989-01-01'
ORDER BY mov_dt_rel DESC;


/*Write a query in SQL to compute a report which contain the genres of those movies with their average time and number of movies for each genres.*/

SELECT gen_title, AVG(mov_time)::numeric(6,2), COUNT(*)
FROM movie NATURAL LEFT JOIN movie_genres
NATURAL LEFT JOIN genres
GROUP BY gen_title; 


/*Write a query in SQL to find those lowest duration movies along with the year, director's name, actor's name and his/her role in that production.*/

SELECT mov_title, mov_time, mov_year, dir_fname, dir_lname, act_fname, act_lname, role
FROM movie NATURAL LEFT JOIN movie_direction
NATURAL LEFT JOIN director
NATURAL LEFT JOIN movie_cast
NATURAL LEFT JOIN actor
WHERE mov_time = (
    SELECT MIN(mov_time)
    FROM movie
);


-- diversas querys

-- verifica quais movies não possuem rating
--SELECT mov_title FROM movie LEFT JOIN rating ON movie.mov_id=rating.mov_id WHERE rev_id IS NULL;

-- verifica se o movie 'Seven Samurai' possui rating
--SELECT COUNT(*) FROM rating WHERE mov_id = (SELECT mov_id FROM movie WHERE mov_title = 'Seven Samurai');

-- WITH mov_stars AS (SELECT mov_title, rev_stars FROM movie NATURAL JOIN rating) SELECT mov_title FROM mov_stars ORDER BY mov_title;




-- REFERENCES
-- [1]https://www.w3resource.com/sql-exercises/
-- [2]https://www.postgresql.org/docs/9.2/ddl-constraints.html
-- [3]https://www.w3resource.com/sql-exercises/movie-database-exercise/subqueries-exercises-on-movie-database.php
-- [4]db-book.com
