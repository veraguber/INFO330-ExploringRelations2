-- What was the most purchased track of 2013?
SELECT t.Name as 'Purchased Track Name', COUNT(ii.TrackId) as 'Number of Track Purchases' FROM tracks t, invoice_items ii, invoices i WHERE ii.TrackId ==  t.TrackId AND ii.InvoiceId == i.InvoiceId and i.InvoiceDate LIKE '2013%' GROUP BY t.Name ORDER BY COUNT(ii.TrackId) DESC LIMIT 10;