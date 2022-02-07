--How many albums does the artist Led Zeppelin have

SELECT
count(AlbumId) 
FROM albums
JOIN artists
ON albums.ArtistId = artists.ArtistId
WHERE artists.Name = "Led Zeppelin";

--Create a list of album titles and the unit prices for the artist "Audioslave".

SELECT 
albums.Title,
tracks.Unitprice,
artists.Name
FROM albums
JOIN tracks
ON albums.AlbumId = tracks.AlbumId
JOIN artists
ON albums.ArtistId = artists.ArtistId
WHERE artists.Name = "Audioslave";

--Find the first and last name of any customer who does not have an invoice. Are there any customers returned from the query?

SELECT
customers.FirstName,
customers.LastName,
invoices.InvoiceId
FROM customers
JOIN invoices
ON customers.CustomerId = invoices.CustomerId
WHERE invoices.InvoiceId IS NULL;

--Find the total price for each album. What is the total price for the album “Big Ones”?

SELECT
SUM(tracks.Unitprice) as TotalPrice,
albums.Title
FROM albums
JOIN tracks
ON albums.AlbumId = tracks.AlbumId
WHERE albums.Title = "Big Ones"

--How many records are created when you apply a Cartesian join to the invoice and invoice items table?

SELECT
count( invoices.InvoiceId)
FROM invoices
CROSS JOIN invoice_items;
