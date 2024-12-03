-- Update cities name
UPDATE places_city SET name = 'BANDA ACEH' WHERE id = 1171;
UPDATE places_city SET name = 'SABANG' WHERE id = 1172;
UPDATE places_city SET name = 'LANGSA' WHERE id = 1173;
UPDATE places_city SET name = 'LHOKSEUMAWE' WHERE id = 1174;
UPDATE places_city SET name = 'SUBULUSSALAM' WHERE id = 1175;
UPDATE places_city SET name = 'SIBOLGA' WHERE id = 1271;
UPDATE places_city SET name = 'TANJUNG BALAI' WHERE id = 1272;
UPDATE places_city SET name = 'PEMATANG SIANTAR' WHERE id = 1273;
UPDATE places_city SET name = 'TEBING TINGGI' WHERE id = 1274;
UPDATE places_city SET name = 'BINJAI' WHERE id = 1276;
UPDATE places_city SET name = 'PADANGSIDIMPUAN' WHERE id = 1277;
UPDATE places_city SET name = 'GUNUNGSITOLI' WHERE id = 1278;
UPDATE places_city SET name = 'SAWAH LUNTO' WHERE id = 1373;
UPDATE places_city SET name = 'SOLOK' WHERE id = 1372;
UPDATE places_city SET name = 'PADANG PANJANG' WHERE id = 1374;
UPDATE places_city SET name = 'BUKITTINGGI' WHERE id = 1375;
UPDATE places_city SET name = 'PAYAKUMBUH' WHERE id = 1376;
UPDATE places_city SET name = 'PARIAMAN' WHERE id = 1377;
UPDATE places_city SET name = 'PEKANBARU' WHERE id = 1471;
UPDATE places_city SET name = 'D U M A I' WHERE id = 1473;
UPDATE places_city SET name = 'JAMBI' WHERE id = 1571;
UPDATE places_city SET name = 'SUNGAI PENUH' WHERE id = 1572;
UPDATE places_city SET name = 'PRABUMULIH' WHERE id = 1672;
UPDATE places_city SET name = 'PAGAR ALAM' WHERE id = 1673;
UPDATE places_city SET name = 'LUBUKLINGGAU' WHERE id = 1674;
UPDATE places_city SET name = 'BENGKULU' WHERE id = 1771;
UPDATE places_city SET name = 'PALEMBANG' WHERE id = 1671;
UPDATE places_city SET name = 'BANDAR LAMPUNG' WHERE id = 1871;
UPDATE places_city SET name = 'METRO' WHERE id = 1872;
UPDATE places_city SET name = 'PANGKAL PINANG' WHERE id = 1971;
UPDATE places_city SET name = 'B A T A M' WHERE id = 2171;
UPDATE places_city SET name = 'TANJUNG PINANG' WHERE id = 2172;
UPDATE places_city SET name = 'SUKABUMI' WHERE id = 3272;
UPDATE places_city SET name = 'CIREBON' WHERE id = 3274;
UPDATE places_city SET name = 'TASIKMALAYA' WHERE id = 3278;
UPDATE places_city SET name = 'BANJAR' WHERE id = 3279;
UPDATE places_city SET name = 'CIMAHI' WHERE id = 3277;
UPDATE places_city SET name = 'MAGELANG' WHERE id = 3371;
UPDATE places_city SET name = 'SALATIGA' WHERE id = 3373;
UPDATE places_city SET name = 'PEKALONGAN' WHERE id = 3375;
UPDATE places_city SET name = 'TEGAL' WHERE id = 3376;
UPDATE places_city SET name = 'KEDIRI' WHERE id = 3571;
UPDATE places_city SET name = 'BLITAR' WHERE id = 3572;
UPDATE places_city SET name = 'PROBOLINGGO' WHERE id = 3574;
UPDATE places_city SET name = 'MOJOKERTO' WHERE id = 3576;
UPDATE places_city SET name = 'MADIUN' WHERE id = 3577;
UPDATE places_city SET name = 'BATU' WHERE id = 3579;
UPDATE places_city SET name = 'PASURUAN' WHERE id = 3575;
UPDATE places_city SET name = 'CILEGON' WHERE id = 3672;
UPDATE places_city SET name = 'DENPASAR' WHERE id = 5171;
UPDATE places_city SET name = 'BANJARMASIN' WHERE id = 6371;
UPDATE places_city SET name = 'BANJAR BARU' WHERE id = 6372;
UPDATE places_city SET name = 'MATARAM' WHERE id = 5271;
UPDATE places_city SET name = 'BIMA' WHERE id = 5272;
UPDATE places_city SET name = 'KUPANG' WHERE id = 5371;
UPDATE places_city SET name = 'PONTIANAK' WHERE id = 6171;
UPDATE places_city SET name = 'SINGKAWANG' WHERE id = 6172;
UPDATE places_city SET name = 'PALANGKA RAYA' WHERE id = 6271;
UPDATE places_city SET name = 'SAMARINDA' WHERE id = 6472;
UPDATE places_city SET name = 'BONTANG' WHERE id = 6474;
UPDATE places_city SET name = 'TARAKAN' WHERE id = 6571;
UPDATE places_city SET name = 'MANADO' WHERE id = 7171;
UPDATE places_city SET name = 'BITUNG' WHERE id = 7172;
UPDATE places_city SET name = 'TOMOHON' WHERE id = 7173;
UPDATE places_city SET name = 'KOTAMOBAGU' WHERE id = 7174;
UPDATE places_city SET name = 'SERANG' WHERE id = 3673;
UPDATE places_city SET name = 'PALU' WHERE id = 7271;
UPDATE places_city SET name = 'PAREPARE' WHERE id = 7372;
UPDATE places_city SET name = 'PALOPO' WHERE id = 7373;
UPDATE places_city SET name = 'KENDARI' WHERE id = 7471;
UPDATE places_city SET name = 'BAUBAU' WHERE id = 7472;
UPDATE places_city SET name = 'GORONTALO' WHERE id = 7571;
UPDATE places_city SET name = 'AMBON' WHERE id = 8171;
UPDATE places_city SET name = 'TUAL' WHERE id = 8172;
UPDATE places_city SET name = 'TERNATE' WHERE id = 8271;
UPDATE places_city SET name = 'TIDORE KEPULAUAN' WHERE id = 8272;
UPDATE places_city SET name = 'SORONG' WHERE id = 9171;
UPDATE places_city SET name = 'JAYAPURA' WHERE id = 9471;
UPDATE places_city SET name = 'Yogyakarta' WHERE id = 3471;
UPDATE places_city SET name = 'BALIKPAPAN' WHERE id = 6471;
UPDATE places_city SET name = 'MALANG' WHERE id = 3573;
UPDATE places_city SET name = 'PADANG' WHERE id = 1371;
UPDATE places_city SET name = 'BANDUNG' WHERE id = 3273;
UPDATE places_city SET name = 'MAKASSAR' WHERE id = 7371;
UPDATE places_city SET name = 'SURABAYA' WHERE id = 3578;
UPDATE places_city SET name = 'SEMARANG' WHERE id = 3374;
UPDATE places_city SET name = 'MEDAN' WHERE id = 1275;


-- update wrong name
UPDATE places_city SET name = 'DUMAI' WHERE id = 1473;
UPDATE places_city SET name = 'BATAM' WHERE id = 2171;


-- Redirection Cities

INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-sungai-penuh-1572', '/sewa/kost/kota/sungai-penuh-1572', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-prabumulih-1672', '/sewa/kost/kota/prabumulih-1672', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-pagar-alam-1673', '/sewa/kost/kota/pagar-alam-1673', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-lubuklinggau-1674', '/sewa/kost/kota/lubuklinggau-1674', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-bengkulu-1771', '/sewa/kost/kota/bengkulu-1771', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-palembang-1671', '/sewa/kost/kota/palembang-1671', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-sabang-1172', '/sewa/kost/kota/sabang-1172', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-bandar-lampung-1871', '/sewa/kost/kota/bandar-lampung-1871', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-tegal-3376', '/sewa/kost/kota/tegal-3376', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-kediri-3571', '/sewa/kost/kota/kediri-3571', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-blitar-3572', '/sewa/kost/kota/blitar-3572', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-pasuruan-3575', '/sewa/kost/kota/pasuruan-3575', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-cilegon-3672', '/sewa/kost/kota/cilegon-3672', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-banda-aceh-1171', '/sewa/kost/kota/banda-aceh-1171', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-mataram-5271', '/sewa/kost/kota/mataram-5271', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-langsa-1173', '/sewa/kost/kota/langsa-1173', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-padangsidimpuan-1277', '/sewa/kost/kota/padangsidimpuan-1277', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-gunungsitoli-1278', '/sewa/kost/kota/gunungsitoli-1278', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-sawah-lunto-1373', '/sewa/kost/kota/sawah-lunto-1373', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-solok-1372', '/sewa/kost/kota/solok-1372', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-lhokseumawe-1174', '/sewa/kost/kota/lhokseumawe-1174', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-padang-panjang-1374', '/sewa/kost/kota/padang-panjang-1374', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-subulussalam-1175', '/sewa/kost/kota/subulussalam-1175', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-sibolga-1271', '/sewa/kost/kota/sibolga-1271', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-tanjung-balai-1272', '/sewa/kost/kota/tanjung-balai-1272', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-pematang-siantar-1273', '/sewa/kost/kota/pematang-siantar-1273', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-tebing-tinggi-1274', '/sewa/kost/kota/tebing-tinggi-1274', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-binjai-1276', '/sewa/kost/kota/binjai-1276', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-bukittinggi-1375', '/sewa/kost/kota/bukittinggi-1375', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-payakumbuh-1376', '/sewa/kost/kota/payakumbuh-1376', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-pariaman-1377', '/sewa/kost/kota/pariaman-1377', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-pekanbaru-1471', '/sewa/kost/kota/pekanbaru-1471', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-d-u-m-a-i-1473', '/sewa/kost/kota/d-u-m-a-i-1473', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-jambi-1571', '/sewa/kost/kota/jambi-1571', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-metro-1872', '/sewa/kost/kota/metro-1872', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-pangkal-pinang-1971', '/sewa/kost/kota/pangkal-pinang-1971', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-b-a-t-a-m-2171', '/sewa/kost/kota/b-a-t-a-m-2171', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-tanjung-pinang-2172', '/sewa/kost/kota/tanjung-pinang-2172', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-sukabumi-3272', '/sewa/kost/kota/sukabumi-3272', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-cirebon-3274', '/sewa/kost/kota/cirebon-3274', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-tasikmalaya-3278', '/sewa/kost/kota/tasikmalaya-3278', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-banjar-3279', '/sewa/kost/kota/banjar-3279', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-cimahi-3277', '/sewa/kost/kota/cimahi-3277', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-magelang-3371', '/sewa/kost/kota/magelang-3371', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-salatiga-3373', '/sewa/kost/kota/salatiga-3373', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-pekalongan-3375', '/sewa/kost/kota/pekalongan-3375', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-probolinggo-3574', '/sewa/kost/kota/probolinggo-3574', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-mojokerto-3576', '/sewa/kost/kota/mojokerto-3576', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-madiun-3577', '/sewa/kost/kota/madiun-3577', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-batu-3579', '/sewa/kost/kota/batu-3579', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-denpasar-5171', '/sewa/kost/kota/denpasar-5171', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-banjarmasin-6371', '/sewa/kost/kota/banjarmasin-6371', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-banjar-baru-6372', '/sewa/kost/kota/banjar-baru-6372', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-bima-5272', '/sewa/kost/kota/bima-5272', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-makassar-7371', '/sewa/kost/kota/makassar-7371', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-kupang-5371', '/sewa/kost/kota/kupang-5371', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-pontianak-6171', '/sewa/kost/kota/pontianak-6171', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-singkawang-6172', '/sewa/kost/kota/singkawang-6172', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-palangka-raya-6271', '/sewa/kost/kota/palangka-raya-6271', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-samarinda-6472', '/sewa/kost/kota/samarinda-6472', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-bontang-6474', '/sewa/kost/kota/bontang-6474', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-tarakan-6571', '/sewa/kost/kota/tarakan-6571', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-manado-7171', '/sewa/kost/kota/manado-7171', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-bitung-7172', '/sewa/kost/kota/bitung-7172', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-tomohon-7173', '/sewa/kost/kota/tomohon-7173', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-kotamobagu-7174', '/sewa/kost/kota/kotamobagu-7174', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-serang-3673', '/sewa/kost/kota/serang-3673', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-palu-7271', '/sewa/kost/kota/palu-7271', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-parepare-7372', '/sewa/kost/kota/parepare-7372', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-palopo-7373', '/sewa/kost/kota/palopo-7373', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-kendari-7471', '/sewa/kost/kota/kendari-7471', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-baubau-7472', '/sewa/kost/kota/baubau-7472', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-gorontalo-7571', '/sewa/kost/kota/gorontalo-7571', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-ambon-8171', '/sewa/kost/kota/ambon-8171', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-tual-8172', '/sewa/kost/kota/tual-8172', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-ternate-8271', '/sewa/kost/kota/ternate-8271', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-tidore-kepulauan-8272', '/sewa/kost/kota/tidore-kepulauan-8272', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-sorong-9171', '/sewa/kost/kota/sorong-9171', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-jayapura-9471', '/sewa/kost/kota/jayapura-9471', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-yogyakarta-3471', '/sewa/kost/kota/yogyakarta-3471', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-balikpapan-6471', '/sewa/kost/kota/balikpapan-6471', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-malang-3573', '/sewa/kost/kota/malang-3573', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-padang-1371', '/sewa/kost/kota/padang-1371', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-bandung-3273', '/sewa/kost/kota/bandung-3273', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-surabaya-3578', '/sewa/kost/kota/surabaya-3578', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-semarang-3374', '/sewa/kost/kota/semarang-3374', true);
INSERT INTO seo_geo_page_redirection (source_path, redirection_path, is_permanent) VALUES ('/sewa/kost/kota/kota-medan-1275', '/sewa/kost/kota/medan-1275', true);





-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 
-- DELETE FROM seo_geo_page_redirection WHERE source_path = 





