-- 1
-- select t.name from track t
-- where t.track_id not in (select il.track_id from invoice_line il);

-- select t.name from track t
-- left join invoice_line il on t.track_id = il.track_id
-- where il.track_id is null;

-- select t.name from invoice_line il
-- right join track t on t.track_id = il.track_id
-- where il.track_id is null;

-- 2
-- select distinct t.name, sum(quantity) from track t
-- join invoice_line il on t.track_id = il.track_id
-- group by t.name
-- having sum(il.quantity) > 100;

-- 3
-- select e.first_name, e.last_name, e.birth_date from employee e
-- where extract(year from birth_date) > (select avg(extract (year from birth_date)) from employee);