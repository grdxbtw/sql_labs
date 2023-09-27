SELECT UPPER(name) AS name_upcase
FROM cities
ORDER BY name ASC
LIMIT 5 OFFSET 5;

SELECT name, CHAR_LENGTH(name) AS name_length 
FROM cities
WHERE CHAR_LENGTH(name) NOT IN (8,9,10) 

SELECT region, SUM(population) AS numbers_of_people
FROM cities
WHERE region IN ('C', 'S')
ORDER BY name ASC 

////sec variant of this

SELECT region, SUM(population) AS full_populstion
FROM cities
WHERE region IN ('C', 'S')
GROUP BY region


SELECT ROUND(AVG(population),2) AS avarage_populstion
FROM cities
WHERE region = 'W'


SELECT COUNT(*) AS Count_of_cities
FROM cities
WHERE region = 'E'

