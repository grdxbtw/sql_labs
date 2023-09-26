SELECT name
FROM cities
WHERE name LIKE '%ськ'


SELECT name
FROM cities
WHERE name LIKE '%донец%'

SELECT CONCAT(name, ' (', region ,') ') AS city_region
FROM cities
WHERE population > 100000
ORDER BY name ASC;

SELECT name, population, Concat(ROUND((population / 40000000),2),'%') AS population_percents
FROM cities
ORDER BY population DESC
LIMIT 10;


SELECT Concat(name, ' - ' ,ROUND((population / 40000000),2),'%') AS population_percents
FROM cities
WHERE (population / 40000000) >= 0.001
ORDER BY population DESC

