--https://spark.apache.org/docs/latest/sql-data-sources-jdbc.html

SHOW TABLES;

CREATE TABLE postgresTable
    USING org.apache.spark.sql.jdbc
    OPTIONS (
                url "jdbc:postgresql://postgres:5432/postgres",
                dbtable "test.calendar",
                user 'postgres',
                password 'postgres'
);

SELECT * FROM postgresTable;

----------------------------------------------------

SHOW NAMESPACES FROM cassandra;
SHOW TABLES FROM cassandra.test;
SELECT * FROM cassandra.test.calendar;

----------------------------------------------------

SELECT * FROM  postgresTable AS PT
JOIN cassandra.test.calendar AS CT
ON PT.day_of_year = CT.day_of_year;