



-- Seleciona as 10 primeiras linhas da tabela person;
SELECT * FROM person LIMIT 10;

-- Obtem todos os generos e a respectiva quantidade de vezes que ocorrem, 
-- coloca em ordem decrescente e pega somente aqueles que ocorrem 65 vezes ou mais.
SELECT gender, COUNT(*) AS count_gender
FROM person 
GROUP BY gender 
HAVING COUNT(*) >= 65
ORDER BY count_gender DESC;

--Conta a quantidade de valores NULL na coluna "gender" da tablea person;
SELECT COUNT(*)
FROM person
WHERE gender IS NULL;

-- Conta a quantidade de trabalhadores por título de trabalho (job_title)
-- e exibe a média salarial para cada um, da maior média salarial para a menor
-- somente títulos de trabalho com mais de 5 trabalhadores são mostrados
-- realiza a contagem da quantidade e média somente para rows em que o campo 'salary' não é nulo.
SELECT job_title, COUNT(*) AS quant_job_title, ROUND(AVG(salary::numeric)) AS avg_salary
FROM person
WHERE salary IS NOT NULL
GROUP BY job_title
HAVING COUNT(*) > 5
ORDER BY COUNT(*) DESC;


-- Conta a quantidade de registros com 'email' ou 'salary' NULL. 
SELECT COUNT(*)
FROM person 
WHERE email IS NULL OR salary IS NULL;

-- Obtém o registro com o maior salário
SELECT *
FROM person
WHERE salary = (
    SELECT MAX(salary)
    FROM person
);

-- Obtém o registro com o segundo maior salario.
SELECT *
FROM person
WHERE salary IS NOT NULL
ORDER BY salary DESC
OFFSET 1 LIMIT 1;

-- Obtém o registro com o terceiro maior salario.
SELECT * 
FROM person
WHERE salary IS NOT NULL
ORDER BY salary DESC
OFFSET 2 LIMIT 1;

-- Testing
WITH new_a AS (SELECT mov_title, (NOW()::DATE - mov_dt_rel)/365 AS age FROM movie) SELECT mov_title, age, ((age*365)+(age/4))/365 AS age_correcaoBissexto FROM new_a;

SELECT mov_title, mov_dt_rel, EXTRACT(YEAR FROM AGE(NOW(), mov_dt_rel)) AS age FROM movie;

