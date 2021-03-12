
-- Insert into Movie table

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Vertigo', 1958,	128, 'English', '1958-08-24', 'UK' );

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('The Innocents', 1961, 100, 'English', '1962-02-19',	'SW' );

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Lawrence of Arabia', 1962, 216,	'English', '1962-12-11', 'UK' );

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('The Deer Hunter', 1978,	183, 'English', '1979-03-08', 'UK' );

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Amadeus', 1984, 160, 'English', '1985-01-07', 'UK');

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Blade Runner', 1982, 117, 'English', '1982-09-09', 'UK');

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Eyes Wide Shut', 1999, 159,	'English',NULL,'UK');

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('The Usual Suspects', 1995, 106,	'English', '1995-08-25', 'UK');

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Chinatown', 1974, 130, 'English', '1974-08-09', 'UK');

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Boogie Nights', 1997, 155, 'English', '1998-02-16', 'UK');

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Annie Hall', 1977, 93, 'English', '1977-04-20', 'USA');

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Princess Mononoke', 1997, 134, 'Japanese', '2001-10-19', 'UK');

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('The Shawshank Redemption', 1994, 142, 'English', '1995-02-17', 'UK');

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('American Beauty', 1999,	122, 'English',NULL, 'UK');

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Titanic', 1997,	194, 'English', '1998-01-23', 'UK' );

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Good Will Hunting', 1997, 126, 'English', '1998-06-03',	'UK');

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Deliverance', 1972,	109, 'English', '1982-10-05','UK');

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Trainspotting', 1996, 94, 'English', '1996-02-23', 'UK');

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('The Prestige', 2006, 130, 'English', '2006-11-10', 'UK');

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Donnie Darko', 2001, 113, 'English',NULL, 'UK');

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Slumdog Millionaire', 2008, 120, 'English', '2009-01-09', 'UK' );

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Aliens', 1986, 137,	'English', '1986-08-29', 'UK');

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Beyond the Sea', 2004, 118,	'English', '2004-11-26', 'UK' );

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Avatar', 2009, 162, 'English', '2009-12-17', 'UK' );

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Braveheart', 1995, 178, 'English', '1995-09-08', 'UK');

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Seven Samurai', 1954, 207, 'Japanese', '1954-04-26', 'JP' );

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Spirited Away', 2001, 125, 'Japanese', '2003-09-12', 'UK');

INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES('Back to the Future', 1985, 116, 'English', '1985-12-04', 'UK' );



-- Inset into genres table

INSERT INTO genres (gen_title) 
VALUES ('Action');

INSERT INTO genres (gen_title) 
VALUES ('Adventure');

INSERT INTO genres (gen_title) 
VALUES ('Animation');

INSERT INTO genres (gen_title) 
VALUES ('Biography');

INSERT INTO genres (gen_title) 
VALUES ('Comedy');

INSERT INTO genres (gen_title) 
VALUES ('Crime');

INSERT INTO genres (gen_title) 
VALUES ('Drama');

INSERT INTO genres (gen_title) 
VALUES ('Horror');

INSERT INTO genres (gen_title) 
VALUES ('Music');

INSERT INTO genres (gen_title) 
VALUES ('Mystery');

INSERT INTO genres (gen_title) 
VALUES ('Romance');

INSERT INTO genres (gen_title) 
VALUES ('Thriller');

INSERT INTO genres (gen_title) 
VALUES ('War');

-- Insert into actor table

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('James', 'Stewart', 'M');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Deborah', 'Kerr', 'F');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Peter', 'OToole', 'M');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Robert', 'De Niro', 'M');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('F. Murray', 'Abraham', 'M');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Harrison', 'Ford', 'M');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Nicole', 'Kidman', 'F');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Stephen', 'Baldwin', 'M');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Jack', 'Nicholson', 'M');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Mark', 'Wahlberg', 'M');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Woody', 'Allen', 'M');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Claire', 'Danes', 'F');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Tim', 'Robbins', 'M');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Kevin', 'Spacey', 'M');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Kate', 'Winslet', 'F');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Robin', 'Williams', 'M');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Jon', 'Voight', 'M');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Ewan', 'McGregor', 'M');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Christian', 'Bale', 'M');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Maggie', 'Gyllenhaal', 'F');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Dev', 'Patel', 'M');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Sigourney', 'Weaver', 'F');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('David', 'Aston', 'M');

INSERT INTO actor (act_fname, act_lname, act_gender)
VALUES ('Ali', 'Astin', 'F');

-- Insert into movie_cast

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (1, 1, 'John Scottie Ferguson');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (2, 2, 'Miss Giddens');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (3, 3, 'T.E. Lawrence ');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (4, 4, 'Michael ');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (5, 5, 'Antonio Salieri ');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (6, 6, 'Rick Deckard ');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (7, 7, 'Alice Harford ');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (8,8, 'McManus ');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (9, 9, 'J.J. Gittes');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (10, 10, 'Eddie Adams');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (11, 11, 'Alvy Singer');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (12, 12, 'San');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (13, 13, 'Andy Dufresne');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (14, 23, 'Bobby Darin');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (14, 14, 'Lester Burnham');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (15, 15, 'Rose DeWitt Bukater');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (16, 16, 'Sean Maguire');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (17, 17, 'Ed');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (18, 18, 'Renton ');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (19, 19, 'Alfred Borden ');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (20, 20, 'Elizabeth Darko ');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (21, 21, 'Older Jamal ');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (22, 22, 'Ripley ');


-- Insert into director table

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Alfred', 'Hitchcock');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Jack', 'Clayton');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('David', 'Lean');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Michael', 'Cimino');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Milos','Forman');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Ridley', 'Scott');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Stanley', 'Kubrick');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Bryan', 'Singer');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Roman', 'Polanski');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Paul', 'Thomas Anderson');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Woody', 'Allen');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Hayao', 'Miyazaki');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Frank', 'Darabont');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Sam', 'Mendes');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('James', 'Cameron');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Gus', 'Van Sant');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('John', 'Boorman');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Danny', 'Boyle');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Christopher', 'Nolan');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Richard', 'Kelly') ;

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Kevin', 'Spacey' );

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Andrei', 'Tarkovsky');

INSERT INTO director (dir_fname, dir_lname)
VALUES ('Peter', 'Jackson' );


-- Insert into movie_direction

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (1, 1);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (2, 2);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (3, 3);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (4, 4);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (5, 5);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (6, 6);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (7, 7);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (8, 8);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (9, 9);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (10, 10);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (11, 11);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (12, 12);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (13, 13);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (14, 14);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (15, 15);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (16, 16);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (17, 17);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (18, 18);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (19, 19);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (20, 20);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (18, 21);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (15, 22);

INSERT INTO movie_direction (dir_id, mov_id)
VALUES (21, 23);

-- Insert into reviewer

INSERT INTO reviewer (rev_name)
VALUES ('Righty Sock ');

INSERT INTO reviewer (rev_name)
VALUES ('Jack Malvern');

INSERT INTO reviewer (rev_name)
VALUES ('Flagrant Baronessa');

INSERT INTO reviewer (rev_name)
VALUES ('Alec Shaw');

INSERT INTO reviewer (rev_name)
VALUES (NULL);

INSERT INTO reviewer (rev_name)
VALUES ('Victor Woeltjen ');

INSERT INTO reviewer (rev_name)
VALUES ('Simon Wright');

INSERT INTO reviewer (rev_name)
VALUES ('Neal Wruck ');

INSERT INTO reviewer (rev_name)
VALUES ('Paul Monks ');

INSERT INTO reviewer (rev_name)
VALUES ('Mike Salvati ');

INSERT INTO reviewer (rev_name)
VALUES (NULL);

INSERT INTO reviewer (rev_name)
VALUES ('Wesley S. Walker');

INSERT INTO reviewer (rev_name)
VALUES ('Sasha Goldshtein ');

INSERT INTO reviewer (rev_name)
VALUES ('Josh Cates');

INSERT INTO reviewer (rev_name)
VALUES ('Krug Stillo');

INSERT INTO reviewer (rev_name)
VALUES ('Scott LeBrun');

INSERT INTO reviewer (rev_name)
VALUES ('Hannah Steele');

INSERT INTO reviewer (rev_name)
VALUES ('Vincent Cadena');

INSERT INTO reviewer (rev_name)
VALUES ('Brandt Sponseller');

INSERT INTO reviewer (rev_name)
VALUES ('Richard Adams');

-- Insert into rating

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (1, 1, 8.40, 263575);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (2, 2, 7.90, 20207);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (3, 3, 8.30, 202778);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (6, 5, 8.20, 484746);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (24, 6, 7.3, NULL);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (8, 7, 8.60, 779489);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (9, 8, NULL, 227235);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (10, 9, 3.00, 195961);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (11, 10, 8.10, 203875);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (12, 11, 8.40, NULL);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (14, 13, 7.00, 862618);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (15, 1, 7.70, 830095);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (16, 14, 4.00, 642132);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (25, 15, 7.70, 81328);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (18, 16, NULL, 580301);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (20, 17, 8.10, 667758);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (21, 18, 8.00, 667758);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (22, 19, 8.40, 511613);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (23, 20, 6.70, 13091);

-- Insert into movie_genres

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (22, 1);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (17 ,2);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (3, 2);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (12, 3);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (11, 5);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (8, 6);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (13, 6);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (26, 7);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (28, 7);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (18, 7);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (21, 7);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (2, 8);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (23, 9);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (7, 10);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (27, 10);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (1, 10);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (14, 11);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (6, 12);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (4, 13);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (22, 1);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (17, 2);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (3, 2);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (12, 3);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (11, 5);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (8, 6);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (13, 6);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (26, 7);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (28, 7);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (18, 7);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (21, 7);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (2, 8);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (23, 9);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (7, 10);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (27, 10);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (1, 10);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (14, 11);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (6, 12);

INSERT INTO movie_genres (mov_id, gen_id)
VALUES (4, 13);






