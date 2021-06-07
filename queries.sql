CREATE TABLE zips_loads_demographic (
	ZIP int,
	LOAD_WEIGHT int,
	TOTAL_POPULATION int,
	TOTAL_HOUSEHOLD int,
	MEDIAN_HOUSEHOLD_INCOME int,
	MEAN_HOUSEHOLD_INCOME int,
	TOTAL_HOUSING_UNITS int
);

CREATE TABLE route_coord_zip (
ROUTE VARCHAR,
CENTER_POINT VARCHAR,
ZIP_CODE int
);

CREATE TABLE weight_route_2017 (
ROUTE VARCHAR,
LOAD_WEIGHT int,
THE_GEOM VARCHAR
);

SELECT w.route, w.load_weight, r.zip_code
FROM weight_route_2017 AS w
INNER JOIN route_coord_zip AS r 
ON w.route = r.route
;