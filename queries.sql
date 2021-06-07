--creating table for main table (joined in PANDAS, working on joing in SQL)
CREATE TABLE zips_loads_demographic (
	ZIP int,
	LOAD_WEIGHT int,
	TOTAL_POPULATION int,
	TOTAL_HOUSEHOLD int,
	MEDIAN_HOUSEHOLD_INCOME int,
	MEAN_HOUSEHOLD_INCOME int,
	TOTAL_HOUSING_UNITS int
);

--creating table with route and designated zip
CREATE TABLE route_coord_zip (
ROUTE VARCHAR,
CENTER_POINT VARCHAR,
ZIP_CODE int
);

--creating table for 2017 info
CREATE TABLE weight_route_2017 (
ROUTE VARCHAR,
LOAD_WEIGHT int,
THE_GEOM VARCHAR
);

SELECT * FROM weight_route_2017;

SELECT * FROM route_coord_zip;

--JOINING routes with zip to its weight
SELECT w.route,  w.load_weight, r.zip_code
INTO route_weight_zip
FROM weight_route_2017 AS w
INNER JOIN route_coord_zip AS r 
ON w.route = r.route;

SELECT * FROM route_weight_zip;
SELECT * FROM zip_code_details;

--JOIN route_weight_zip to zip_code_details
SELECT d.zip_code,  
d.total_population, 
d.total_households, 
d.median_household_income, 
d.mean_household_income, 
d.total_housing_units,
r.route,
r.load_weight
--INTO NEW_MAIN_TABLE_THAT_NEEDS_GROUPBY_ON_ZIPS_AND_SUM_ON_WEIGHT
FROM zip_code_details AS d
INNER JOIN route_weight_zip AS r 
ON d.zip_code = r.zip_code;