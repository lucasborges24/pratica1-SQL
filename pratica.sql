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

-- Exercise 3
SELECT users."id",
users."name",
courses."name" AS course,
schools."name" AS school,
educations."endDate"
FROM users
JOIN educations
ON users."id" = educations."userId"
JOIN courses
ON educations."courseId" = courses."id"
JOIN schools
ON educations."schoolId" = schools."id"
WHERE users."id" = 30 AND educations."status" = 'finished';

-- Exercise 4
SELECT users."id",
users."name",
roles."name" AS "role",
companies."name" AS "company",
experiences."startDate"
FROM users
JOIN experiences
ON users."id" = experiences."userId"
JOIN roles
ON roles."id" = experiences."roleId"
JOIN companies
ON experiences."companyId" = companies."id"
WHERE  users."id" = 50 AND experiences."endDate" IS NULL;
