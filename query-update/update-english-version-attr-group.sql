-- ALTER TABLE public.buildings_building ADD COLUMN rules_en text DEFAULT null;
-- ALTER TABLE public.attr_group ADD COLUMN  name_en character varying(256) NOT NULL DEFAULT '';
-- ALTER TABLE public.attr ADD COLUMN  name_en character varying(256) NOT NULL DEFAULT '';
-- ALTER TABLE public.attr_list ADD COLUMN  display_string_en text NOT NULL DEFAULT '';

--  INTERNAL_SALES                           Internal Sales
--  OUTSIDE_VIEW                             Outdoor View
--  COMMON_AREA                          Communal Area
--  BEDROOM                          Bed
--  BATHROOM                             Bathroom
--  ELECTRONICS                          Electronics
--  FURNITURE                            Furniture
--  UTENSILS                             Equipment
--  SERVICE                          Services
--  SECURITY                             Security
--  PARKING                          Parking Area
--  SPORTS_FACILITY                          Sports Facilities
--  ENTERTAINMENT                            Entertainment
--  HOUSE_RULES                          House Rules
--  KITCHEN_AND_DINING                           Kitchen & Dining Area
--  LIVINGROOM                           Living Room
--  WATER_INTERNET_ELECTRICITY                           Utilities
--  LAYOUT                           Layout
--  FURNISHING                           Furnishings
--  B2B                          Owned By

UPDATE attr_group SET name_en = 'Internal Sales' WHERE id = 'INTERNAL_SALES';
UPDATE attr_group SET name_en = 'Outdoor View' WHERE id = 'OUTSIDE_VIEW';
UPDATE attr_group SET name_en = 'Communal Area' WHERE id = 'COMMON_AREA';
UPDATE attr_group SET name_en = 'Bed' WHERE id = 'BEDROOM';
UPDATE attr_group SET name_en = 'Bathroom' WHERE id = 'BATHROOM';
UPDATE attr_group SET name_en = 'Electronics' WHERE id = 'ELECTRONICS';
UPDATE attr_group SET name_en = 'Furniture' WHERE id = 'FURNITURE';
UPDATE attr_group SET name_en = 'Equipment' WHERE id = 'UTENSILS';
UPDATE attr_group SET name_en = 'Services' WHERE id = 'SERVICE';
UPDATE attr_group SET name_en = 'Security' WHERE id = 'SECURITY';
UPDATE attr_group SET name_en = 'Parking Area' WHERE id = 'PARKING';
UPDATE attr_group SET name_en = 'Sports Facilities' WHERE id = 'SPORTS_FACILITY';
UPDATE attr_group SET name_en = 'Entertainment' WHERE id = 'ENTERTAINMENT';
UPDATE attr_group SET name_en = 'House Rules' WHERE id = 'HOUSE_RULES';
UPDATE attr_group SET name_en = 'Kitchen & Dining Area' WHERE id = 'KITCHEN_AND_DINING';
UPDATE attr_group SET name_en = 'Living Room' WHERE id = 'LIVINGROOM';
UPDATE attr_group SET name_en = 'Utilities' WHERE id = 'WATER_INTERNET_ELECTRICITY';
UPDATE attr_group SET name_en = 'Layout' WHERE id = 'LAYOUT';
UPDATE attr_group SET name_en = 'Furnishings' WHERE id = 'FURNISHING';
UPDATE attr_group SET name_en = 'Owned By' WHERE id = 'B2B';