INSERT INTO buildings_building
  ( id, building_name, building_type, building_status, property_type, internet_status, published, active, featured_building, priority_building, laundry, parking_area, room_cleaning, security, publish_status, release_date, release_status, rukita_option, enable_online_payment, allow_for_more_than_30_days, eligible_for_discount, minimum_deposit, laundry_deduction_to_landlord, photo_thumbnail_original, country_id, province_id, city_id, district_id, subdistrict_id, "desc", lat, lon, date_created, date_updated ) VALUES 
  ( 811, 'Homestay AK Ciawi Bogor', 1, 5, 5, 1, true, true, false, false, 1, 1, 1, 1, 1, 1, 2, true, true, false, true, 2, 'NO_DEDUCTION', 'buildings/building/5b50a4f1-73b.jpg', 84, 32, 3201, 3201100, 3201100012, '<p>Homestay AK Ciawi Bogor adalah tempat tinggal yang nyaman dan aman', -6.66, 106.86, current_date, current_date );


INSERT INTO buildings_building
  ( id, building_name, building_type, building_status, property_type, internet_status, published, active, featured_building, priority_building, laundry, parking_area, room_cleaning, security, publish_status, release_date, release_status, rukita_option, enable_online_payment, allow_for_more_than_30_days, eligible_for_discount, minimum_deposit, laundry_deduction_to_landlord, photo_thumbnail_original, country_id, province_id, city_id, district_id, subdistrict_id, "desc", lat, lon, date_created, date_updated ) VALUES 
  ( 6324, 'Rukita Bareja Bogor Baru', 1, 5, 5, 1, true, true, false, false, 1, 1, 1, 1, 1, 1, 2, true, true, false, true, 2, 'NO_DEDUCTION', 'buildings/building/5b50a4f1-73b.jpg', 84, 32, 3271, 3271030, 3271030002, '<p>Homestay AK Ciawi Bogor adalah tempat tinggal yang nyaman dan aman', -6.66, 106.86, current_date, current_date );


INSERT INTO public.buildings_roomvariant (
    name, date_created, date_updated, building_id, max_occupancy, ac_type,
    area_size, laundry_type, total_bed, room_type_id, price, code, date_deleted,
    bathroom, electricity, gender, remarks, publish_status,
    terminated_date, terminated_reason, is_deleted, deleted_by, discount_id,
    is_renovated, wfh_ready, base_price, video_url, created_by, updated_by, netsuite_last_sync_ts,
    salesforce_last_sync_ts
)
VALUES
(
        'TestAssetVariant', '2021-05-10 07:08:25.470980 +00:00', '2021-05-10 07:08:25.471002 +00:00', 811, 4, 1,
        4.00, 1, 2, 19101, 1000000, 'RKT-JKT-DC-001-001', null, 1, 2, 0, '', 1, null, '', false, null, null, false, false,
        0, null, null, null, '2021-05-10 07:08:25.471002 +00:00',
        current_date
    );



INSERT INTO public.buildings_roomvariant
  ( name, date_created, date_updated, building_id, max_occupancy, ac_type, area_size, laundry_type, total_bed, room_type_id, price, code, date_deleted, bathroom, electricity, gender, remarks, publish_status, terminated_date, terminated_reason, is_deleted, deleted_by, discount_id, is_renovated, wfh_ready, base_price, video_url, created_by, updated_by, netsuite_last_sync_ts, salesforce_last_sync_ts ) VALUES
  ( 'TestAssetVariant 1', '2021-05-10 07:08:25.470980 +00:00', '2021-05-10 07:08:25.471002 +00:00', 6324, 4, 1, 4.00, 1, 2, 19101, 1000000, 'RKT-JKT-DC-001-001', null, 1, 2, 0, '', 1, null, '', false, null, null, false, false, 0, null, null, null, '2021-05-10 07:08:25.471002 +00:00', current_date );
















    ======================


    INSERT INTO buildings_building (
    id,
    building_name,
    building_type,
    building_status,
    property_type,
    internet_status,
    published,
    active,
    featured_building,
    priority_building,
    laundry,
    parking_area,
    room_cleaning,
    security,
    publish_status,
    release_date,
    release_status,
    rukita_option,
    enable_online_payment,
    allow_for_more_than_30_days,
    eligible_for_discount,
    minimum_deposit,
    laundry_deduction_to_landlord,
    photo_thumbnail_original,
    country_id,
    province_id,
    city_id,
    district_id,
    subdistrict_id,
    "desc",
    lat,
    lon,
                                date_created,
                                date_updated
) VALUES (
             811,
             'Homestay AK Ciawi Bogor',
             1,
             5,
             5,
             1,
             true,
             true,
             false,
             false,
             1,
             1,
             1,
             1,
             1,
             1,
             2,
             true,
             true,
             false,
             true,
             2,
             'NO_DEDUCTION',
             'buildings/building/5b50a4f1-73b.jpg',
             84,
             32,
             3201,
             3201100,
             3201100012,
             '<p>Homestay AK Ciawi Bogor adalah tempat tinggal yang nyaman dan aman',
             -6.66,
             106.86,
                current_date,
                current_date
         );



         INSERT INTO buildings_building (
    id,
    building_name,
    building_type,
    building_status,
    property_type,
    internet_status,
    published,
    active,
    featured_building,
    priority_building,
    laundry,
    parking_area,
    room_cleaning,
    security,
    publish_status,
    release_date,
    release_status,
    rukita_option,
    enable_online_payment,
    allow_for_more_than_30_days,
    eligible_for_discount,
    minimum_deposit,
    laundry_deduction_to_landlord,
    photo_thumbnail_original,
    country_id,
    province_id,
    city_id,
    district_id,
    subdistrict_id,
    desc,
    lat,
    lon
) VALUES (
             811,
             'Homestay AK Ciawi Bogor',
             1,
             5,
             5,
             1,
             true,
             true,
             false,
             false,
             1,
             1,
             1,
             1,
             1,
             1,
             2,
             true,
             true,
             false,
             true,
             2,
             'NO_DEDUCTION',
             'buildings/building/5b50a4f1-73b.jpg',
             84,
             32,
             3201,
             3201100,
             3201100012,
             '<p>Homestay AK Ciawi Bogor adalah tempat tinggal yang nyaman dan aman',
             -6.66,
             106.86
         );




         INSERT INTO public.buildings_roomvariant (
    name, date_created, date_updated, building_id, max_occupancy, ac_type,
    area_size, laundry_type, total_bed, room_type_id, price, code, date_deleted,
    bathroom, electricity, gender, remarks, publish_status,
    terminated_date, terminated_reason, is_deleted, deleted_by, discount_id,
    is_renovated, wfh_ready, base_price, video_url, created_by, updated_by, netsuite_last_sync_ts,
    salesforce_last_sync_ts
)
VALUES
    (
        'TestAssetVariant', '2021-05-10 07:08:25.470980 +00:00', '2021-05-10 07:08:25.471002 +00:00', 811, 4, 1,
        4.00, 1, 2, 19101, 1000000, 'RKT-JKT-DC-001-001', null, 1, 2, 0, '', 1, null, '', false, null, null, false, false,
        0, null, null, null, '2021-05-10 07:08:25.471002 +00:00',
        current_date
    );


    INSERT INTO public.buildings_roomvariant (
    name, date_created, date_updated, building_id, max_occupancy, ac_type,
    area_size, laundry_type, total_bed, room_type_id, price, code, date_deleted,
    bathroom, electricity, gender, remarks, publish_status,
    terminated_date, terminated_reason, is_deleted, deleted_by, discount_id,
    is_renovated, wfh_ready, base_price, video_url, created_by, updated_by, netsuite_last_sync_ts,
    salesforce_last_sync_ts
)
VALUES
    (
        'TestAssetVariant 2', '2021-05-10 07:08:25.470980 +00:00', '2021-05-10 07:08:25.471002 +00:00', 811, 4, 1,
        4.00, 1, 2, 3, 1000000, 'RKT-JKT-DC-001-001', null, 1, 2, 0, '', 1, null, '', false, null, null, false, false,
        0, null, null, null, '2021-05-10 07:08:25.471002 +00:00',
        current_date
    );

  UPDATE buildings_building SET is_deleted = false WHERE id = 811;
































  =========================
  select * FROM places_city where name ilike '%bogor%';
select * FROM places_district where name ilike '%bogor%';

SELECT id, building_name, publish_status, is_deleted, city_id, district_id FROM buildings_building WHERE id=811;
SELECT id, building_name, publish_status, is_deleted, city_id, district_id FROM buildings_building WHERE id=6324;
SELECT id, building_name, publish_status, is_deleted, city_id, district_id FROM buildings_building WHERE id=6686;

-- Asset di Kota Bogor Barat
SELECT id, building_name, publish_status, is_deleted, city_id, district_id FROM buildings_building WHERE city_id=3271;

-- Asset di Kabupaten Bogor Barat
SELECT id, building_name, publish_status, is_deleted, city_id, district_id FROM buildings_building WHERE city_id=3201;

-- Asset di Bogor Barat
SELECT id, building_name, publish_status, is_deleted, city_id, district_id FROM buildings_building WHERE district_id=3271050;

-- Asset di Bogor Utara
SELECT id, building_name, publish_status, is_deleted, city_id, district_id FROM buildings_building WHERE district_id=3271030;

-- Asset di Bogor Selatan: expect empty
SELECT id, building_name, publish_status, is_deleted, city_id, district_id FROM buildings_building WHERE district_id=3271010;

-- Asset di Bogor Timur
SELECT id, building_name, publish_status, is_deleted, city_id, district_id FROM buildings_building WHERE district_id=3271020;

-- Asset di Bogor Tengah
SELECT id, building_name, publish_status, is_deleted, city_id, district_id FROM buildings_building WHERE district_id=3271040;


-- update publish_status and is_deleted
UPDATE buildings_building SET publish_status=1, is_deleted=false WHERE id=811;
UPDATE buildings_building SET publish_status=1, is_deleted=false WHERE id=6324;
UPDATE buildings_building SET publish_status=1, is_deleted=false WHERE id=6686;

SELECT * FROM buildings_roomtype LIMIT 10;
SELECT * FROM buildings_roomvariant where building_id=6324;

-- Kota Bogor: 3271
-- Bogor Utara: 3271030
-- Bogor Barat: 3271050

INSERT INTO buildings_building (
    id,
    building_name,
    building_type,
    building_status,
    property_type,
    internet_status,
    published,
    active,
    featured_building,
    priority_building,
    laundry,
    parking_area,
    room_cleaning,
    security,
    publish_status,
    release_date,
    release_status,
    rukita_option,
    enable_online_payment,
    allow_for_more_than_30_days,
    eligible_for_discount,
    minimum_deposit,
    laundry_deduction_to_landlord,
    photo_thumbnail_original,
    country_id,
    province_id,
    city_id,
    district_id,
    subdistrict_id,
    "desc",
    lat,
    lon,
    date_created,
    date_updated
) VALUES (
             811,
             'Homestay Bogor Barat',
             1,
             5,
             5,
             1,
             true,
             true,
             false,
             false,
             1,
             1,
             1,
             1,
             1,
             1,
             2,
             true,
             true,
             false,
             true,
             2,
             'NO_DEDUCTION',
             'buildings/building/5b50a4f1-73b.jpg',
             84,
             32,
             3201,
             3201100,
             3201100012,
             '<p>Homestay AK Ciawi Bogor adalah tempat tinggal yang nyaman dan aman',
             -6.66,
             106.86,
             current_date,
             current_date
         );


-----------  6324
INSERT INTO buildings_building
( id, building_name, building_type, building_status, property_type, internet_status, published, active, featured_building, priority_building, laundry, parking_area, room_cleaning, security, publish_status, release_date, release_status, rukita_option, enable_online_payment, allow_for_more_than_30_days, eligible_for_discount, minimum_deposit, laundry_deduction_to_landlord, photo_thumbnail_original, country_id, province_id, city_id, district_id, subdistrict_id, "desc", lat, lon, date_created, date_updated ) VALUES
    ( 6324, 'Rukita Bareja Bogor Baru', 1, 5, 5, 1, true, true, false, false, 1, 1, 1, 1, 1, 1, 2, true, true, false, true, 2, 'NO_DEDUCTION', 'buildings/building/5b50a4f1-73b.jpg', 84, 32, 3271, 3271030, 3271030002, '<p>Homestay AK Ciawi Bogor adalah tempat tinggal yang nyaman dan aman', -6.66, 106.86, current_date, current_date );


INSERT INTO public.buildings_roomvariant
( name, date_created, date_updated, building_id, max_occupancy, ac_type, area_size, laundry_type, total_bed, room_type_id, price, code, date_deleted, bathroom, electricity, gender, remarks, publish_status, terminated_date, terminated_reason, is_deleted, deleted_by, discount_id, is_renovated, wfh_ready, base_price, video_url, created_by, updated_by, netsuite_last_sync_ts, salesforce_last_sync_ts ) VALUES
    ( 'TestAssetVariant 1', '2021-05-10 07:08:25.470980 +00:00', '2021-05-10 07:08:25.471002 +00:00', 6324, 4, 1, 4.00, 1, 2, 3, 1000000, 'RKT-JKT-DC-001-001', null, 1, 2, 0, '', 1, null, '', false, null, null, false, false, 0, null, null, null, '2021-05-10 07:08:25.471002 +00:00', current_date );

INSERT INTO public.buildings_roomvariant
( name, date_created, date_updated, building_id, max_occupancy, ac_type, area_size, laundry_type, total_bed, room_type_id, price, code, date_deleted, bathroom, electricity, gender, remarks, publish_status, terminated_date, terminated_reason, is_deleted, deleted_by, discount_id, is_renovated, wfh_ready, base_price, video_url, created_by, updated_by, netsuite_last_sync_ts, salesforce_last_sync_ts ) VALUES
    ( 'TestAssetVariant 2', '2021-05-10 07:08:25.470980 +00:00', '2021-05-10 07:08:25.471002 +00:00', 6324, 4, 1, 4.00, 1, 2, 5, 1000000, 'RKT-JKT-DC-001-001', null, 1, 2, 0, '', 1, null, '', false, null, null, false, false, 0, null, null, null, '2021-05-10 07:08:25.471002 +00:00', current_date );


-----------  6686
INSERT INTO buildings_building
( id, building_name, building_type, building_status, property_type, internet_status, published, active, featured_building, priority_building, laundry, parking_area, room_cleaning, security, publish_status, release_date, release_status, rukita_option, enable_online_payment, allow_for_more_than_30_days, eligible_for_discount, minimum_deposit, laundry_deduction_to_landlord, photo_thumbnail_original, country_id, province_id, city_id, district_id, subdistrict_id, "desc", lat, lon, date_created, date_updated ) VALUES
    ( 6686, 'Green Harris View', 1, 5, 5, 1, true, true, false, false, 1, 1, 1, 1, 1, 1, 2, true, true, false, true, 2, 'NO_DEDUCTION', 'buildings/building/5b50a4f1-73b.jpg', 84, 32, 3271, 3271050, 3271050004, '<p>Homestay AK Ciawi Bogor adalah tempat tinggal yang nyaman dan aman', -6.66, 106.86, current_date, current_date );

INSERT INTO public.buildings_roomvariant
( name, date_created, date_updated, building_id, max_occupancy, ac_type, area_size, laundry_type, total_bed, room_type_id, price, code, date_deleted, bathroom, electricity, gender, remarks, publish_status, terminated_date, terminated_reason, is_deleted, deleted_by, discount_id, is_renovated, wfh_ready, base_price, video_url, created_by, updated_by, netsuite_last_sync_ts, salesforce_last_sync_ts ) VALUES
    ( 'TestAssetVariant 1', '2021-05-10 07:08:25.470980 +00:00', '2021-05-10 07:08:25.471002 +00:00', 6686, 4, 1, 4.00, 1, 2, 3, 1000000, 'RKT-JKT-DC-001-001', null, 1, 2, 0, '', 1, null, '', false, null, null, false, false, 0, null, null, null, '2021-05-10 07:08:25.471002 +00:00', current_date );

INSERT INTO public.buildings_roomvariant
( name, date_created, date_updated, building_id, max_occupancy, ac_type, area_size, laundry_type, total_bed, room_type_id, price, code, date_deleted, bathroom, electricity, gender, remarks, publish_status, terminated_date, terminated_reason, is_deleted, deleted_by, discount_id, is_renovated, wfh_ready, base_price, video_url, created_by, updated_by, netsuite_last_sync_ts, salesforce_last_sync_ts ) VALUES
    ( 'TestAssetVariant 2', '2021-05-10 07:08:25.470980 +00:00', '2021-05-10 07:08:25.471002 +00:00', 6686, 4, 1, 4.00, 1, 2, 5, 1000000, 'RKT-JKT-DC-001-001', null, 1, 2, 0, '', 1, null, '', false, null, null, false, false, 0, null, null, null, '2021-05-10 07:08:25.471002 +00:00', current_date );


-- INSERT INTO public.buildings_roomvariant (
--     name, date_created, date_updated, building_id, max_occupancy, ac_type,
--     area_size, laundry_type, total_bed, room_type_id, price, code, date_deleted,
--     bathroom, electricity, gender, remarks, publish_status,
--     terminated_date, terminated_reason, is_deleted, deleted_by, discount_id,
--     is_renovated, wfh_ready, base_price, video_url, created_by, updated_by, netsuite_last_sync_ts,
--     salesforce_last_sync_ts
-- )
-- VALUES
--     (
--         'TestAssetVariant 2', '2021-05-10 07:08:25.470980 +00:00', '2021-05-10 07:08:25.471002 +00:00', 811, 4, 1,
--         4.00, 1, 2, 3, 1000000, 'RKT-JKT-DC-001-001', null, 1, 2, 0, '', 1, null, '', false, null, null, false, false,
--         0, null, null, null, '2021-05-10 07:08:25.471002 +00:00',
--         current_date
--     );