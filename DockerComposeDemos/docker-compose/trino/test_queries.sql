SELECT * FROM cassandra.test.calendar AS cassandra;
SELECT * FROM postgres.test.calendar AS postgres;

SELECT DISTINCT cassandra.day_of_year, postgres.day_of_year, *
FROM cassandra.test.calendar AS cassandra
         JOIN postgres.test.calendar AS postgres
              ON cassandra."day_of_year" = postgres."day_of_year"
WHERE cassandra.day_of_year BETWEEN 10 AND 20
ORDER BY cassandra.day_of_year DESC;

SELECT COUNT(*) AS number_of_days, cassandra."month"
FROM cassandra.test.calendar AS cassandra
         JOIN postgres.test.calendar AS postgres
              ON cassandra."day_of_year" = postgres."day_of_year"
WHERE postgres."month" BETWEEN 2 AND 4
GROUP BY cassandra."month"
HAVING COUNT(*) > 10
ORDER BY cassandra."month";