update places_city set tags = 'bogor' where id = 3201;
update places_city set tags = 'bekasi' where id = 3216;

update places_city set tags = 'bogor' where id = 3271;
update places_city set tags = 'bekasi' where id = 3275;


SELECT * FROM places_city WHERE name ILIKE '%bogor%'
SELECT * FROM places_district WHERE name ILIKE '%bogor%'

SELECT * FROM places_city WHERE name ILIKE '%bekasi%'
SELECT * FROM places_district WHERE name ILIKE '%bekasi%'

SELECT * FROM places_city WHERE id=3271;
SELECT * FROM places_city WHERE id=3275;