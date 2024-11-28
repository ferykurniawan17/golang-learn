package main

type BuildingsPointOfInterestImportant struct {
	buildingId int
	buildingName string
	poiId int
	distance float64
	searchImportant bool
	searchPopularity float64
}

type AssetPoiImportant struct {
	buildingId int
	poiId int
	score float64
};

type DataType struct {
	PoiId int
	Score float64
}

func main() {
	// CREATE TABLE buildings_building (
	// 	id SERIAL PRIMARY KEY,
	// 	building_name VARCHAR(100) NOT NULL,
	// 	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	// 	updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
	// );
	
	// INSERT INTO buildings_building (building_name) VALUES ('Gedung A'), ('Gedung B'), ('Gedung C'), ('Gedung D'), ('Gedung E');
	
	// SELECT * FROM buildings_building;
	
	
	// -- Create table public.buildings_pointofinterest
	
	// CREATE TABLE buildings_pointofinterest (
	// 	id SERIAL PRIMARY KEY,
	// 	name VARCHAR(100) NOT NULL,
	// 	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	// 	updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
	// );

// 	-- Create table buildings_buildingpointinterest
// -- Table mapping between buildings_building and buildings_pointofinterest
// CREATE TABLE buildings_buildingpointinterest (
//   id SERIAL PRIMARY KEY,
//   building_id INTEGER NOT NULL,
//   point_of_interest_id INTEGER NOT NULL,
//   created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
//   updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
//   FOREIGN KEY (building_id) REFERENCES buildings_building (id),
//   FOREIGN KEY (point_of_interest_id) REFERENCES buildings_pointofinterest (id)
// );

// INSERT INTO buildings_buildingpointinterest
//   (building_id, point_of_interest_id)
// VALUES
//   (1, 1),
//   (1, 6),` // search_important: true, search_popularity: 3`
//   (1, 3),

//   (2, 4),
//   (2, 7),` // search_important: true, search_popularity: 1`
//   (2, 6),` // search_important: true, search_popularity: 3`

//   (3, 7),` // search_important: true, search_popularity: 1`
//   (3, 8),` // search_important: true, search_popularity: 2`
//   (3, 9),

//   (4, 1),
//   (4, 2),
//   (4, 3),
  
//   (5, 2),
//   (5, 3),
//   (5, 5);
	
	// INSERT INTO
	// 	buildings_pointofinterest (name) VALUES ('Kantor Pos'), ('Kantor Polisi'), ('Kantor Desa'), ('Kantor Kecamatan'), ('Kantor Bupati'), ('MRT Station'), ('LRT Station'), ('Stasiun Kereta'), ('Bandara'), ('Pelabuhan');
	
	
	// ALTER TABLE buildings_pointofinterest ADD COLUMN search_important boolean not null default false;
	// ALTER TABLE buildings_pointofinterest ADD COLUMN search_popularity double precision not null default 1;
	
	// UPDATE buildings_pointofinterest SET search_important = true WHERE name ILIKE '%Station%';
	// UPDATE buildings_pointofinterest set search_important = true WHERE id=8;
	// UPDATE buildings_pointofinterest SET search_popularity=3 WHERE id=6;
	// UPDATE buildings_pointofinterest SET search_popularity=2 WHERE id=8;
	
	// CREATE TABLE public.asset_poi_important (
	// 	asset_id integer NOT NULL,
	// 	poi_id integer NOT NULL,
	// 	score double precision NOT NULL,
	
	// 	PRIMARY KEY (asset_id, poi_id),
	// 	FOREIGN KEY (asset_id) REFERENCES buildings_building (id),
	// 	FOREIGN KEY (poi_id) REFERENCES buildings_pointofinterest (id)
	// );
	
	// -- Insert table public.asset_poi_important
	
	// INSERT INTO public.asset_poi_important
	// 	(asset_id, poi_id, score)
	// 	VALUES
	// 	(1, 6, 3),
	// 	(1, 7, 2),
	// 	(2, 6, 3),
	// 	(2, 8, 2),
	// 	(3, 6, 3),
	// 	(3, 7, 2),
	// 	(4, 6, 3),
	// 	(4, 8, 2),
	// 	(5, 6, 3),
	// 	(5, 8, 2);

	// Calculate score with golang from search_important and search_popularity in buildings_pointofinterest only when search_important is true

// Get only POI with search_important = true
// SELECT 
//   asset.id AS building_id,
//   asset.building_name,
//   poimap.point_of_interest_id AS poi_id,
//   poimap.distance AS distance,
//   poi.search_important,
//   poi.search_popularity
// FROM
//   buildings_building AS asset
//   JOIN buildings_buildingpointinterest AS poimap
// ON asset.id = poimap.building_id
//   JOIN buildings_pointofinterest AS poi
// ON poi.id = poimap.point_of_interest_id
// WHERE poi.search_important=true
// ORDER by asset.id ASC;
// 	building_id | building_name | poi_id | distance | search_important | search_popularity 
// -------------+---------------+--------+----------+------------------+-------------------
//            1 | Gedung A      |      6 |        1 | t                |                 3
//            2 | Gedung B      |      6 |        1 | t                |                 3
//            2 | Gedung B      |      7 |        2 | t                |                 1
//            3 | Gedung C      |      7 |        1 | t                |                 1
//            3 | Gedung C      |      8 |      1.5 | t                |                 2

	buildingsPoiSearchImportant := []BuildingsPointOfInterestImportant{
		{ buildingId: 1, buildingName: "Gedung A", poiId: 6, distance: 1, searchImportant: true, searchPopularity: 3 },
		{ buildingId: 2, buildingName: "Gedung B", poiId: 6, distance: 1, searchImportant: true, searchPopularity: 3 },
		{ buildingId: 2, buildingName: "Gedung B", poiId: 7, distance: 2, searchImportant: true, searchPopularity: 1 },
		{ buildingId: 3, buildingName: "Gedung C", poiId: 7, distance: 1, searchImportant: true, searchPopularity: 1 },
		{ buildingId: 3, buildingName: "Gedung C", poiId: 8, distance: 1.5, searchImportant: true, searchPopularity: 2 },
	}

	// buildingPoiMap := make(map[int][]BuildingsPointOfInterestImportant)
	// for _, buildPoi := range buildingsPoiSearchImportant {
		
	// 	if _, ok := buildingPoiMap[buildPoi.buildingId]; !ok {
	// 		// Create new key in map if not exist
	// 		buildingPoiMap[buildPoi.buildingId] = []BuildingsPointOfInterestImportant{}
	// 	}

	// 	// Append value to key
	// 	buildingPoiMap[buildPoi.buildingId] = append(buildingPoiMap[buildPoi.buildingId], buildPoi)
	// }

	// fmt.Println(buildingPoiMap)

	// Calculate score with golang from search_important and search_popularity in buildings_pointofinterest only when search_important is true

	newData := []DataType{
		{ PoiId: 6, Score: 3 },
		{ PoiId: 7, Score: 2 },
		{ PoiId: 8, Score: 2 },
	}

	existData := []DataType{
		{ PoiId: 6, Score: 3 },
		{ PoiId: 7, Score: 1 }, // exist but different score
		{ PoiId: 12, Score: 2 },
	}

	// Create map for new data
	// { PoiId: 8, Score: 2 }

	// Delete data
	// { PoiId: 12, Score: 2 }

	// Update data
	// { PoiId: 7, Score: 2 }

	// Buatkan code untuk menghasilkan tiga data diatas
	

}
