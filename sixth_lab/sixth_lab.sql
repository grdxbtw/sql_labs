SELECT c.name, r.name as region_name
FROM cities c
JOIN regions r ON c.region = r.uuid
WHERE c.population > 350000


SELECT c.name, r.name as region_name
FROM cities c
JOIN regions r ON c.region = r.uuid
WHERE r.name = 'Nord'


ALTER TABLE `subway Kh`
CHANGE `name` `name` varchar(30) NOT NULL FIRST,
CHANGE `branch` `branch` char(3) NOT NULL AFTER `name`,
CHANGE `connect` `connect` char(3) NULL AFTER `branch`;

INSERT INTO `subway Kh` (`name`, `branch`, `connect`)
VALUES ('Geroyiv parci', 'S', NULL);