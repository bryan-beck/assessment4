-- ARTIST TABLE
-- 1
INSERT INTO artist (name)
VALUES ('bryan'), ('phil'), ('Adam');
-- 2
SELECT * FROM artist
ORDER BY artist_id
LIMIT 5

-- EMPLOYEE TABLE 
-- 1
SELECT (first_name, last_name)
FROM employee
WHERE city='Calgary'
-- 2
-- SELECT * FROM employee
-- WHERE first_name='Nancy'
SELECT * FROM employee
WHERE reports_to=2
-- 3
SELECT COUNT(*) FROM employee
WHERE city='Lethbridge'

-- INVOICE TABLE 
-- 1
SELECT COUNT(*) FROM invoice
WHERE billing_country='USA'
-- 2
SELECT MAX(total) AS "top ticket price"
FROM invoice
-- 3
SELECT MIN(total) AS "Lowest ticket price"
FROM invoice
-- 4
SELECT * FROM invoice
WHERE total > 5
-- 5
SELECT COUNT (*) FROM invoice
WHERE total < 5
-- 6
SELECT Sum(total) AS "SUM Total of all orders"
FROM invoice

-- JOIN QUERIES 
-- 1
SELECT unit_price
FROM invoice_line
JOIN invoice
ON quantity = invoice.invoice_id
WHERE unit_price > 0.99
-- 2
SELECT *
FROM invoice 
JOIN customer 
ON customer.customer_id = invoice.invoice_id
-- 3
SELECT *
FROM customer
JOIN employee
ON employee.employee_id = customer.support_rep_id
SELECT *
FROM employee
join customer
on employee.employee_id = customer.support_rep_id
-- 4
SELECT *
FROM album
join artist
on album.album_id = artist.artist_id