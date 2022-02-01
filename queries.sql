-- write your queries here
SELECT *
FROM owners
FULL OUTER JOIN vehicles
ON owners.id = vehicles.owner_id;

SELECT first_name, COUNT(*) AS num_vehicles
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY owner_id
ORDER BY first_name;