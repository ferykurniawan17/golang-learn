SELECT
  p.id AS province_id,
  p.name AS province_name,
  json_agg(
    DISTINCT jsonb_build_object(
      'id', c.id,
      'name', c.name
    )
  ) AS cities
FROM buildings_building b
JOIN places_province p ON b.province_id = p.id
JOIN places_city c ON b.city_id = c.id AND c.province_id = p.id
WHERE b.published = true AND p.is_deleted = false
GROUP BY p.id, p.name
ORDER BY p.name;