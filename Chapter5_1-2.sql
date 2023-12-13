--Dataset: invoices
--Source: SQL QuickStart Guide: The Simplified Beginner's Guide to Managing, Analyzing, and Manipulating Data With SQL (https://www.amazon.sg/SQL-QuickStart-Guide-Simplified-Manipulating/dp/1945051752)
--Queried using: DB Browser using SQLite

**Chapter 5 exercises**
-- Q1. Create a query for the invoices table that includes a CASE statement that labels all sales from billing country USA as “Domestic Sales” and all other sales as “Foreign Sales.” 
        Label your new field as SalesType after your END AS statement.
-- Q2. Order this data by the new field SalesType.
    
SELECT 
    InvoiceDate,
    BillingAddress,
    BillingCity,
    Total,
    CASE
        WHEN BillingCountry = 'USA' THEN 'Domestic Sales'
        ELSE 'Foreign Sales'
    END AS SalesType
FROM invoices
ORDER BY  SalesType DESC;
