-- 1
-- SELECT album.title, artist.name
-- FROM album
-- INNER JOIN artist
-- ON artist.artist_id = album.artist_id

-- 2
-- SELECT album.title, artist.name
-- FROM album
-- INNER JOIN artist
-- ON album.artist_id = artist.artist_id
-- WHERE artist.name = 'U2'

-- 3
-- SELECT mt.name, t.* FROM track t, media_type mt
-- WHERE t.media_type_id = 3 AND t.media_type_id = mt.media_type_id;

-- 4
-- SELECT t.name, t.composer, t.milliseconds / 1000 AS seconds
-- FROM track t
-- INNER JOIN playlist_track pt ON t.track_id = pt.track_id
-- INNER JOIN playlist p ON p.playlist_id = pt.playlist_id
-- WHERE t.composer IS NOT NULL AND p.name = '90’s Music'
-- ORDER BY t.name;

-- 5
-- SELECT DISTINCT a.title
-- FROM album a
-- INNER JOIN track t ON t.album_id = a.album_id
-- INNER JOIN genre g ON g.genre_id = t.genre_id
-- WHERE g.name = 'Soundtrack';

-- 6
-- SELECT i.invoice_id, t.name, ar.name, a.title, t.unit_price, c.first_name || ' ' || c.last_name AS name
-- FROM invoice i
-- JOIN invoice_line il ON i.invoice_id = il.invoice_id
-- JOIN track t ON t.track_id = il.track_id
-- JOIN album a ON t.album_id = a.album_id
-- JOIN artist ar ON ar.artist_id = a.artist_id
-- JOIN customer c ON c.customer_id = i.customer_id;

-- 7
-- SELECT c.first_name, c.last_name
-- FROM customer c
-- JOIN employee e on c.city = e.city
-- WHERE e.reports_to IS NULL;

-- 8
-- SELECT e1.first_name, e1.last_name FROM employee e1
-- INNER JOIN employee e2 ON e2.employee_id = e1.reports_to
-- WHERE e2.reports_to IS NULL;

-- 9
-- SELECT artist.name FROM artist
-- WHERE artist.artist_id NOT IN (SELECT album.artist_id FROM album)

-- check this!!!
-- SELECT alb.artist_id, art.artist_id FROM album alb
-- LEFT JOIN album art ON alb.artist_id = art.artist_id
-- WHERE art.artist_id IS NULL;

-- 10
-- check this!!!
-- SELECT DISTINCT t.name, t.composer FROM track t
-- INNER JOIN playlist_track pt ON t.track_id = pt.track_id
-- INNER JOIN playlist p ON pt.playlist_id = p.playlist_id AND p.name = 'Heavy Metal Classic'
-- RIGHT JOIN track t2 ON t.track_id = t2.track_id
-- WHERE t.track_id IS NULL
-- ORDER BY t.name;

-- 11
-- select A.* from customer A
--     left join invoice B
--         on A.customer_id = B.customer_id
--             and extract(year from B.invoice_date) = 2012
-- where invoice_id is null
-- order by a.last_name, a.first_name asc;

-- 12
-- SELECT c.customer_id, c.first_name, c.last_name FROM customer c
-- WHERE c.customer_id NOT IN (SELECT i.customer_id FROM invoice i)
-- ORDER BY c.first_name, c.first_name;

-- 13
-- SELECT first_name, last_name, birth_date FROM employee
-- ORDER BY birth_date
-- LIMIT 1;

-- select a.first_name,
--        a.last_name, a.birth_date, b.birth_date
-- from employee a
--     left join employee b on a.birth_date > b.birth_date
-- where b.employee_id is null;

-- 14
-- select b.*
-- from media_type a
--     inner join track b
--         on a.media_type_id = b.media_type_id
--             and a.name = 'Protected MPEG-4 video file'
--     left join track c
--         on b.milliseconds < c.milliseconds
-- where c.track_id is null;

-- 15
-- SELECT t.name, t.milliseconds / 1000 AS seconds FROM track t
-- INNER JOIN album a on a.album_id = t.album_id
-- INNER JOIN artist a2 on a2.artist_id = a.artist_id
-- WHERE a.title = 'War' AND a2.name = 'U2'
-- ORDER BY t.milliseconds DESC
-- LIMIT 1;

-- select b.name, a.title, at.name, b.milliseconds/1000 as seconds
-- from album a
--     inner join track b
--         on a.album_id = b.album_id
--         and a.title = 'War'
--     inner join artist at
--         on at.artist_id = a.artist_id
--         and at.name = 'U2'
--     left join track c
--         on b.milliseconds < c.milliseconds
--         and b.album_id = c.album_id
-- where c.track_id is null;

-- 16
-- (SELECT t.name, t.milliseconds / 1000 AS seconds FROM track t
-- INNER JOIN album a on a.album_id = t.album_id
-- INNER JOIN artist a2 on a2.artist_id = a.artist_id
-- WHERE a.title = 'War' AND a2.name = 'U2'
-- ORDER BY t.milliseconds DESC
-- LIMIT 1)
-- UNION
-- (SELECT t.name, t.milliseconds / 1000 AS seconds FROM track t
-- INNER JOIN album a on a.album_id = t.album_id
-- INNER JOIN artist a2 on a2.artist_id = a.artist_id
-- WHERE a.title = 'War' AND a2.name = 'U2'
-- ORDER BY t.milliseconds
-- LIMIT 1);

-- select distinct a.name, a.milliseconds/1000 as seconds, b.name, c.name
-- from track a
--     inner join album al
--         on al.album_id = a.album_id
--         and al.title = 'War'
--     inner join artist at
--         on at.artist_id = al.artist_id
--         and at.name = 'U2'
--     left join track b on b.milliseconds > a.milliseconds
--          and b.album_id = al.album_id
--     left join track c ON c.milliseconds < a.milliseconds
--          and c.album_id = al.album_id
-- where c.name is null or b.name is null;