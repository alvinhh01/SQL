# sqlcustomers
--Dataset: Customers
--Source: SQL QuickStart Guide: The Simplified Beginner's Guide to Managing, Analyzing, and Manipulating Data With SQL (https://www.amazon.sg/SQL-QuickStart-Guide-Simplified-Manipulating/dp/1945051752)
--Queried using: DB Browser using SQLite

**Chapter 4 exercises**
-- **Q1. How many customers’ last names begin with B?**
/*
CREATED BY: Alvin Lim
CREATED ON: 12/12/2023
DESCRIPTION: This query selects customers whose last names that ends with b from the customers table, ordered by then first name(descending).
*/

SELECT
FirstName AS [First Name],
LastName AS [Last Name],
Email AS [EMAIL]
FROM
customers
WHERE 
LastName LIKE 'b%'
ORDER BY
FirstName DESC;

-- **Q2 When sorted in descending order, which company appears at the top in the customers table?**
/*
CREATED BY: Alvin Lim
CREATED ON: 13/12/2023
DESCRIPTION: When sorted in descending order, which company appears at the top in the customers table?
*/

SELECT
FirstName AS [First Name],
LastName AS [Last Name],
Email AS [EMAIL],
Company 
FROM
customers
WHERE 
company IS NOT NULL
ORDER BY
Company DESC;

-- **Q3. How many customers do not have a postal code listed?**
/*
CREATED BY: Alvin Lim
CREATED ON: 13/12/2023
DESCRIPTION: How many customers do not have a postal code listed?
*/

SELECT
FirstName AS [First Name],
LastName AS [Last Name],
Email AS [EMAIL]
FROM
customers
WHERE 
PostalCode IS NULL
ORDER BY
FirstName DESC;



