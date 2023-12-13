--Dataset: invoices
--Source: SQL QuickStart Guide: The Simplified Beginner's Guide to Managing, Analyzing, and Manipulating Data With SQL (https://www.amazon.sg/SQL-QuickStart-Guide-Simplified-Manipulating/dp/1945051752)
--Queried using: DB Browser using SQLite

**Chapter 5 exercises**
-- 3. How many invoices from Domestic Sales were over $15?
    
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
WHERE Total > 15
ORDER BY SalesType DESC;
