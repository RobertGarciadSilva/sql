
CREATE TABLE person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(70),
    gender VARCHAR(20) NOT NULL,
    birth_date DATE,
    birth_country VARCHAR(50),
    job_title VARCHAR(50)
);