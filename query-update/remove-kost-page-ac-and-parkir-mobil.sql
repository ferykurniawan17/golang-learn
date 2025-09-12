
-- PARKIR MOBIL
-- Delete kost page -> parkir mobil
DELETE FROM seo_geo_page WHERE geo_filter_id = 9;
-- Delete filter parkir mobil
DELETE FROM seo_geo_filter WHERE id=9;


-- AC
-- Delete kost page -> AC
DELETE FROM seo_geo_page WHERE geo_filter_id = 10;
-- Delete filter AC
DELETE FROM seo_geo_filter WHERE id=10;


-- Step 1: Delete the kost page entries for AC and Parkir Mobil
-- DELETE Page SEO Geo Page 
DELETE FROM seo_geo_page WHERE geo_filter_id = 9;
DELETE FROM seo_geo_page WHERE geo_filter_id = 10;

-- Step 2: Delete the filter entries for AC and Parkir Mobil
-- DELETE Filter SEO Geo Filter
DELETE FROM seo_geo_filter WHERE id = 9;
DELETE FROM seo_geo_filter WHERE id = 10;