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