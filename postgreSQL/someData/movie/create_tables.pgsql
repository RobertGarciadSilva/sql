
-- Crie um database chamado movie e execute a criação 
-- das tableas abaixo depois execute a inserção dos valores.
-- 0BS: O database tem de ser criado do zero, caso não, pode ocorrer
-- problema ao ao inserir os valores, devido a sequencia da PRIMARY KEY AUTO INCREMENT. 

CREATE TABLE movie (
    mov_id BIGSERIAL NOT NULL PRIMARY KEY,
    mov_title VARCHAR(50),
    mov_year INTEGER,
    mov_time INTEGER,
    mov_lang VARCHAR(50),
    mov_dt_rel DATE,
    mov_rel_country VARCHAR(50)
);

CREATE TABLE genres (
    gen_id BIGSERIAL PRIMARY KEY,
    gen_title VARCHAR(20)
);

CREATE TABLE actor (
    act_id BIGSERIAL PRIMARY KEY,
    act_fname VARCHAR(20),
    act_lname VARCHAR(20),
    act_gender CHAR(1)
);

CREATE TABLE movie_cast (
    act_id BIGSERIAL REFERENCES actor (act_id),
    mov_id BIGSERIAL REFERENCES movie (mov_id),
    role VARCHAR(30),
    PRIMARY KEY (act_id, mov_id)

);

CREATE TABLE director (
    dir_id BIGSERIAL PRIMARY KEY,
    dir_fname VARCHAR(20),
    dir_lname VARCHAR(20)
);

CREATE TABLE movie_direction (
    dir_id BIGSERIAL REFERENCES director (dir_id),
    mov_id BIGSERIAL REFERENCES movie (mov_id),
    PRIMARY KEY (dir_id, mov_id)
);

CREATE TABLE reviewer (
    rev_id BIGSERIAL PRIMARY KEY,
    rev_name VARCHAR(30)
);

CREATE TABLE rating (
    mov_id BIGSERIAL REFERENCES movie (mov_id),
    rev_id BIGSERIAL REFERENCES reviewer (rev_id),
    rev_stars NUMERIC,
    num_o_ratings INTEGER,
    PRIMARY KEY (mov_id, rev_id)
);

CREATE TABLE movie_genres (
    mov_id BIGSERIAL REFERENCES movie (mov_id),
    gen_id BIGSERIAL REFERENCES genres (gen_id)
    --PRIMARY KEY (mov_id, gen_id)
);


-- REFERENCES
-- [1]https://www.w3resource.com/sql-exercises/
-- [2]https://www.postgresql.org/docs/9.2/ddl-constraints.html

