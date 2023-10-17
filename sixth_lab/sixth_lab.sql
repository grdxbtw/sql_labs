SELECT c.name, r.name as region_name
FROM cities c
JOIN regions r ON c.region = r.uuid
WHERE c.population > 350000


SELECT c.name, r.name as region_name
FROM cities c
JOIN regions r ON c.region = r.uuid
WHERE r.name = 'Nord'

CREATE TABLE MetroLines (
    LineID INT PRIMARY KEY,
    LineName VARCHAR(50) NOT NULL,
    CityName VARCHAR(50) NOT NULL,
    StartStation VARCHAR(50) NOT NULL,
    EndStation VARCHAR(50) NOT NULL,
    LineLength DECIMAL(10, 2) NOT NULL,
    StationsCount INT NOT NULL
);

CREATE TABLE MetroStations (
    StationID INT PRIMARY KEY,
    StationName VARCHAR(50) NOT NULL,
    LineID INT,
    FOREIGN KEY (LineID) REFERENCES MetroLines (LineID)
);

CREATE TABLE MetroConnections (
    ConnectionID INT PRIMARY KEY,
    LineID1 INT,
    LineID2 INT,
    TransferStation VARCHAR(50) NOT NULL,
    FOREIGN KEY (LineID1) REFERENCES MetroLines (LineID),
    FOREIGN KEY (LineID2) REFERENCES MetroLines (LineID)
);