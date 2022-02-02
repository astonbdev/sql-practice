CREATE TABLE stars (
    name VARCHAR(50) PRIMARY KEY,
    temp_in_K INT
);

CREATE TABLE planets (
    name VARCHAR(50) PRIMARY KEY,
    orbital_period_yrs FLOAT,
    star_id VARCHAR(50) REFERENCES stars
);

CREATE TABLE moons (
    name VARCHAR(50) PRIMARY KEY,
    planet_id VARCHAR(50) REFERENCES planets
);


