SELECT c.name, r.name as region_name
FROM cities c
JOIN regions r ON c.region = r.uuid
WHERE c.population > 350000


SELECT c.name, r.name as region_name
FROM cities c
JOIN regions r ON c.region = r.uuid
WHERE r.name = 'Nord'

CREATE TABLE metro_lines(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    city_name VARCHAR(50) NOT NULL,
    line_length DECIMAL(10, 2) NOT NULL,
    stations_count INT NOT NULL
);

CREATE TABLE stations(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    line_id INT,
    prev_station_id INT DEFAULT NULL,
    next_station_id INT DEFAULT NULL,
    FOREIGN KEY (line_id) REFERENCES metro_lines(id)
);

CREAT TABLE transfers(
    id INT PRIMARY KEY,
    station_id_from INT DEFAULT NULL,
    station_id_to INT DEFAULT NULL	
);

CREATE TABLE connections(
    connection_id INT PRIMARY KEY,
    line_id1 INT,
    line_id2 INT,
    tranfer_station VARCHAR(50) NOT NULL,
    FOREIGN KEY (line_id1 ) REFERENCES metro_lines(id),
    FOREIGN KEY (line_id2) REFERENCES metro_lines(id)
);