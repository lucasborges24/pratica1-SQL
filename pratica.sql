-- Exercise 1
SELECT users."name", cities."name" AS city
FROM users
JOIN cities
ON users."cityId" = cities."id";

-- Exercise 2
SELECT writer."name" AS writer, recipient."name" AS recipient, testimonials."message"
FROM testimonials
JOIN users writer
ON testimonials."writerId" = writer."id"
JOIN users recipient
ON testimonials."recipientId" = recipient."id";

