-- Phase 1
-- psql -d travel < /filepath/to/project/cities_and_airports.sql

-- Phase 2
SELECT city, state, population_estimate_2018
FROM cities;

SELECT name
FROM airports;

-- Phase 3
SELECT population_estimate_2018
FROM cities
WHERE city = 'San Diego';

SELECT city, state, population_estimate_2018
FROM cities
WHERE city IN ('Phoenix', 'Jacksonville', 'Charlotte', 'Nashville');

SELECT city, state, population_estimate_2018
FROM cities
WHERE population_estimate_2018 BETWEEN 800000 AND 900000;

SELECT city
FROM cities
WHERE population_estimate_2018 >= 1000000;

SELECT city, population_estimate_2018/1000000
FROM cities
WHERE state = 'Texas';

SELECT city, population_estimate_2018
FROM cities
WHERE state NOT IN ('New York', 'California', 'Texas');

SELECT city, population_estimate_2018
FROM cities
WHERE city LIKE 'S%';

SELECT city, land_area_sq_mi_2016, population_estimate_2018
FROM cities
WHERE
land_area_sq_mi_2016 > 400
OR
population_estimate_2018 > 2000000;

SELECT city, land_area_sq_mi_2016, population_estimate_2018
FROM cities
WHERE (
(land_area_sq_mi_2016 > 400
OR
population_estimate_2018 > 2000000
)
AND NOT
(land_area_sq_mi_2016 > 400
AND
population_estimate_2018 > 2000000
));

SELECT city, population_estimate_2018, population_census_2010
FROM cities
WHERE (population_estimate_2018 - population_census_2010) > 200000;

-- phase 4
SELECT name, city
FROM airports
INNER JOIN cities
ON (airports.city_id = cities.id);
