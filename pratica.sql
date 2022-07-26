-- Exercise 1
SELECT users."name", cities."name" AS city
FROM users
JOIN cities
ON users."cityId" = cities."id";

