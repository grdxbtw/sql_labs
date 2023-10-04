SELECT CONCAT(SUM(population),' (',region,')') as population_in_regions
FROM cities
GROUP BY region

SELECT region, COUNT(*) as city_count,SUM(population)
FROM cities
GROUP BY region
HAVING city_count >= 10


SELECT SUM(population), name
FROM cities
WHERE region in (SELECT uuid
                  FROM regions
                  WHERE area_quantity >= 5)
GROUP BY name
LIMIT 5 OFFSET 10

SELECT r.name AS region_name, SUM( population) AS total_population
FROM cities c
INNER JOIN regions r ON c.region = r.uuid
WHERE population > 300000
GROUP BY r.name
ORDER BY r.name

SELECT CONCAT(c.name,' - ',c.population)  AS city_name
FROM cities c
JOIN regions r ON c.region = r.uuid
WHERE r.area_quantity <= 5 AND c.population NOT BETWEEN 150000 AND 500000