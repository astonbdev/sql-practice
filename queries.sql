-- write your queries here
SELECT *
FROM owners
FULL OUTER JOIN vehicles
ON owners.id = vehicles.owner_id;

SELECT first_name, COUNT(*) AS num_vehicles
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY owners.id
ORDER BY first_name;

SELECT first_name, ROUND(SUM(price)/COUNT(*), 0) AS avg_price_greater_than, COUNT(*) AS count
FROM vehicles
JOIN owners
ON vehicles.owner_id = owners.id
GROUP BY owners.id
HAVING COUNT(*) > 1 AND SUM(price)/COUNT(*) > 10000 
ORDER BY first_name DESC;