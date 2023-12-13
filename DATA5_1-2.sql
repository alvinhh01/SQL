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