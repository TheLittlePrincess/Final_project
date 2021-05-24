-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "GarbageRecycle2015RR" (
    "LANDFILL" varchar   NOT NULL,
    "the_geom" varchar   NOT NULL,
    "GARB_RT" varchar   NOT NULL,
    "GARB_DAY" date   NOT NULL,
    "GARB_SUP" varchar   NOT NULL,
    "SUPER_NUM" varchar   NOT NULL,
    "OP_TYPE" varchar   NOT NULL,
    "RT_OLD" varchar   NOT NULL,
    CONSTRAINT "pk_GarbageRecycle2015RR" PRIMARY KEY (
        "GARB_RT"
     )
);

CREATE TABLE "Austin_Waste_and_Diversion" (
    "Report_Date" Date   NOT NULL,
    "Load_Type" varchar   NOT NULL,
    "Load_Time" date   NOT NULL,
    "Load_Weight" Int   NOT NULL,
    "Dropoff_Site" varchar   NOT NULL,
    "Route_Type" varchar   NOT NULL,
    "Route_Number" varchar   NOT NULL,
    "Load_ID" varchar   NOT NULL,
    CONSTRAINT "pk_Austin_Waste_and_Diversion" PRIMARY KEY (
        "Load_ID"
     )
);

CREATE TABLE "Full_zip_codes" (
    "ZIPCODE" varchar   NOT NULL,
    "TOTAL_POPULATION" Int   NOT NULL,
    "TOTAL_HOUSEHOLDS" Int   NOT NULL,
    "MEDIAN_HOUSEHOLD_INCOME" Int   NOT NULL,
    "MEAN_HOUSEHOLD_INCOME" Int   NOT NULL,
    "TOTAL_HOUSING_UNITS" Int   NOT NULL,
    CONSTRAINT "pk_Full_zip_codes" PRIMARY KEY (
        "ZIPCODE"
     )
);

CREATE TABLE "Austin_zip_codes" (
    "Zipcode" varchar   NOT NULL,
    "Coordinates" varchar   NOT NULL,
    CONSTRAINT "pk_Austin_zip_codes" PRIMARY KEY (
        "Zipcode"
     )
);

ALTER TABLE "GarbageRecycle2015RR" ADD CONSTRAINT "fk_GarbageRecycle2015RR_the_geom" FOREIGN KEY("the_geom")
REFERENCES "Austin_zip_codes" ("");

ALTER TABLE "GarbageRecycle2015RR" ADD CONSTRAINT "fk_GarbageRecycle2015RR_GARB_RT" FOREIGN KEY("GARB_RT")
REFERENCES "Austin_Waste_and_Diversion" ("");

ALTER TABLE "Austin_Waste_and_Diversion" ADD CONSTRAINT "fk_Austin_Waste_and_Diversion_Route_Number" FOREIGN KEY("Route_Number")
REFERENCES "GarbageRecycle2015RR" ("");

ALTER TABLE "Full_zip_codes" ADD CONSTRAINT "fk_Full_zip_codes_ZIPCODE" FOREIGN KEY("ZIPCODE")
REFERENCES "Austin_zip_codes" ("");

ALTER TABLE "Austin_zip_codes" ADD CONSTRAINT "fk_Austin_zip_codes_Zipcode" FOREIGN KEY("Zipcode")
REFERENCES "Full_zip_codes" ("");

ALTER TABLE "Austin_zip_codes" ADD CONSTRAINT "fk_Austin_zip_codes_Coordinates" FOREIGN KEY("Coordinates")
REFERENCES "GarbageRecycle2015RR" ("");

