CREATE TABLE stars (
    star_name VARCHAR(50) PRIMARY KEY,
    temp_in_K INT
);

CREATE TABLE planets (
    planet_name VARCHAR(50) PRIMARY KEY,
    orbital_period_yrs FLOAT,
    star_id VARCHAR(50) REFERENCES stars
);

CREATE TABLE moons (
    moon_name VARCHAR(50) PRIMARY KEY,
    planet_id VARCHAR(50) REFERENCES planets
);

INSERT INTO stars (star_name, temp_in_K)
VALUES ('The Sun', 5800),
('Proxima Centauri', 3042),
('Gliese 876', 3192);

INSERT INTO planets (planet_name, orbital_period_yrs, star_id)
VALUES ('Earth', 1.00, 'The Sun'),
('Mars', 1.882, 'The Sun'),
('Venus', 0.62, 'The Sun'),
('Proxima Centauri b', 0.03, 'Proxima Centauri'),
('Gliese 876 b', 0.236, 'Gliese 876');

INSERT INTO moons (moon_name, planet_id)
    VALUES('The Moon', 'Earth'),
    ('DEIMOS', 'Mars'),
    ('Phobos', 'Mars');


SELECT planet_name, star_id as star, COUNT(*) as moon_count
FROM planets
LEFT OUTER JOIN moons
ON moons.planet_id = planets.planet_name;
GROUP BY moons.planet_id;





