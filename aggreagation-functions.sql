-- 1

-- select sum(i.total) from invoice i
-- where extract(month from i.invoice_date) = 5
-- and extract(year from i.invoice_date) = 2013;

-- select sum(i.total) from invoice i
-- where i.invoice_date between '2013-05-01' and '2013-05-31'
-- and extract(year from i.invoice_date) = 2013;

-- 2
-- select max(counts.c) as max from (
--     select country, count(*) as c from customer
--     group by country
--     order by count(*) desc
-- ) as counts;

-- 3
-- select count(*) from track t, album a
-- where t.album_id = a.album_id and a.title = 'War';

-- 4
-- select
--     sum(milliseconds) / 1000 / 60 as minutes,
--     mod(sum(milliseconds) / 1000, 60) as seconds
-- from track t, album a
-- where t.album_id = a.album_id
--     and a.title = 'War';

--------------------------------------
-- 1
-- select extract(year from invoice_date) as year, sum(total) from invoice
--     group by year
-- order by year;

-- 2
-- select p.name, sum(pt.track_id) from playlist p
--     left join playlist_track pt on pt.playlist_id = p.playlist_id
-- group by pt.playlist_id, p.name;

-- 3
-- select max(milliseconds) / 1000 as max_seconds, min(milliseconds) / 1000 as min_seconds, avg(milliseconds) / 1000 as avg_seconds from track;
-- join album a on a.album_id = track.album_id
-- where a.title = 'War';
--
-- select min(milliseconds) / 1000 as seconds from track;
-- join album a on a.album_id = track.album_id
-- where a.title = 'War';
--
-- select avg(milliseconds) / 1000 as seconds from track;
-- join album a on a.album_id = track.album_id
-- where a.title = 'War';

-- 4
-- select sum(il.quantity) from invoice_line il, track t, album a
-- where il.track_id = t.track_id and t.album_id = a.album_id and a.title = 'War';

-- 5
-- select billing_country, sum(total) from invoice
-- where extract(year from invoice_date) = 2012
-- group by billing_country
-- order by sum(total) desc;

-- 6
-- select sum(total) from invoice i, customer c
-- where c.first_name = 'Wyatt' and c.last_name = 'Girard' and c.customer_id = i.customer_id;

-- 7
-- neviem
-- select max(t.composer) from track t, invoice_line il, invoice i, customer c
-- where c.first_name = 'Wyatt' and c.last_name = 'Girard' and c.customer_id = i.customer_id and i.invoice_id = il.invoice_id and il.track_id = t.track_id;

-- 8
-- select extract(year from invoice_date), extract(month from invoice_date), sum(total) from invoice
--     group by extract(year from invoice_date), extract(month from invoice_date)
-- order by extract(year from invoice_date), extract(month from invoice_date);

-- 9
-- select i.invoice_date, i.total from invoice i
-- where i.total > 2 and extract(year from i.invoice_date) = 2013 and extract(month from i.invoice_date) = 5 and i.billing_country = 'United Kingdom';

-- 10
-- nejde mi to
-- select distinct t.name, i.billing_country, count(quantity), sum(total) from invoice_line il, invoice i, media_type mt, track t
-- where billing_country = 'Germany' and mt.name in ('MPEG audio file', 'Protected AAC audio file', 'Purchased AAC audio file', 'AAC audio file')
-- group by t.name, i.billing_country;

-- 11
-- select name, count(name) from track
-- group by name
-- having count(name) > 1
-- order by count(name);