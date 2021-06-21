# Final_project
Data Visualization Bootcamp Final Project


## [Project Overview](https://docs.google.com/presentation/d/1ff6geuibB3INIdmVZ1MCOf6o9UUcdfSww27aJYee5uw/edit#slide=id.gd7b3277579_0_96)
The purpose of this project is to obtain an understanding of the relationship between waste production and household income in Austin, TX. With Austin being a diverse city  growing on both ends of the rich-poor spectrum, our team wanted to determine if there is a correlation between higher income households and higher waste production in comparison to lower income homes.

## Communication Protocols 
Our team used collaboration tools such as Slack, Zoom, email, and Google docs. These tools enabled us to communicate and develop our ideas through the forums that were accessible to us. We facilitated this process by creating a Slack group message, which was our main forum of communication alongside Zoom calls. We shared our contact information, our availability, topics, datasets, codes, and any points and notes that could have been potentially missed by a team member. We set a consistent time for Zoom meetings that everyone could attend in order for team members to not miss any information. If at times a member had to leave we would communicate on slack to ensure everyone is up to date. Email and Google docs were also used in order to have documentation of the work assigned during our calls and messages as well as the progress that was made. 

## Resources
Resources:
- [Garbage and waste routes for City of Austin](https://data.austintexas.gov/Locations-and-Maps/Garbage-Routes/azhh-4hg8)
- [Waste collection and diversion daily report](https://data.austintexas.gov/Utilities-and-City-Services/Waste-Collection-Diversion-Report-daily-/mbnu-4wq9) 
- [Zip code boundaries for Austin](https://openaustin.carto.com/u/oa-admin/tables/austin_area_zip_codes/public)
- [Household income by zip code](https://www.austintexas.gov/page/demographic-data)

## Tools
- Excel
- Jupyter & Colab notebooks
- PgAdmin4
- AWS 
- Tableau
- SQL
- Matplotlib
- Visual Studio
- Python
- Pandas & Geopandas
- html/ccs
- Java


## Process
- Created a [schema](https://github.com/TheLittlePrincess/Final_project/blob/main/screenshots/Initial_ETL.png) based on the data first gathered
- Created a Database  in AWS
- Created tables in pgAdmin based on the QuickDBD [sql](https://github.com/TheLittlePrincess/Final_project/blob/main/Initial_ETL.sql) export
- Consolidated the zip code and income data into a single [file](https://github.com/TheLittlePrincess/Final_project/blob/main/full_zip_codes.csv)
- [Cleaned](https://github.com/TheLittlePrincess/Final_project/blob/main/waste_data_etl.ipynb) and filtered the waste collection data to only utilize 2017 data
- We filtered and merged the garbage and waste route data into the [Routes_2017_weight](https://github.com/TheLittlePrincess/Final_project/blob/main/routes_2017_weight.csv), to obtain the waste weight per route
- We sampled pairs of zip codes and routes, [Preliminary_zip_route_weight.csv](https://github.com/TheLittlePrincess/Final_project/blob/main/old_files/Preliminary_zip_route_weight.csv), in order to append household income data to have a preliminary dataset to run our machine learning [model](https://github.com/TheLittlePrincess/Final_project/blob/main/old_files/ML_rough_model.ipynb)
- During week one, we used the extracted sample data to create a linear regression model in order to complete a predictive analysis and to show the relationship between the variables of income and waste output 


Segment 2
- Once found which zipcode each route belongs to, we [aggregated](https://github.com/TheLittlePrincess/Final_project/blob/main/routes_with_zips_joined_loads_dem.ipynb) the waste weight per route per zipcode, and extracted what became the source data
-  Created a [file](https://github.com/TheLittlePrincess/Final_project/blob/main/app_development/zips_load_demographics.csv) that includes the total trash output, median income, household units, and population by zipcode (zips_load_demographics) 
- Source data was then uploaded into our [database](https://github.com/TheLittlePrincess/Final_project/blob/main/ML%20Process/ML_rough_model_Week2.ipynb) to feed our [model](https://github.com/TheLittlePrincess/Final_project/blob/main/ML%20Process/ML_rough_model_Week2.ipynb)
- Split our dataset randomly into training/testing 
- Through the first iteration of the model we concluded that there is a linear relationship when it comes to [population](https://github.com/TheLittlePrincess/Final_project/blob/main/Trash%20output%20vs%20Population.png)  but [normal](https://github.com/TheLittlePrincess/Final_project/blob/main/Trash%20output%20vs%20Median%20income.png) when it comes to income
- Due to results we started toying with PCA (Principal Component Analysis) as an alternative since it would allow us to determine what is/are the most relevant factor(s) when it comes to trash output 
- Gathered a set of [wireframes](https://github.com/TheLittlePrincess/Final_project/tree/main/Wireframes) to base the design of the dashboard site 
- Progress made to [presentation](https://docs.google.com/presentation/d/1ff6geuibB3INIdmVZ1MCOf6o9UUcdfSww27aJYee5uw/edit#slide=id.gd7b3277579_0_3643)  as additional data and information was gathered

Segment 3
- Performed Principal Component Analysis to reduce dimensionality of data points for [model](https://github.com/TheLittlePrincess/Final_project/blob/main/ML%20Process/ML_MODEL_PCA_KNN_RF.ipynb)
- Changed machine learning model choice from linear regression to K-nearest-neighbors and random forest to test performance on different models
- Applied K-nearest-neighbors method to the machine learning model, kept predicted outputs as continuous values
- Performed random forest method on machine learning model, binned the trash outputs into "low", "medium", and "high" to turn the predicted outputs into categorical values to see if this improves model's accuracy score.
- Calculated mean absolute error and percent error on k-nearest-neighbors method to analyze performance
- Calculated accuracy score on random forest method after changing outputs to categorical values to analyze model performance
- Selected Github pages as our option to deploy the [dashboard](https://github.com/TheLittlePrincess/TheLittlePrincess.github.io)
- Created a dashboard on github pages
- Included a tab for interacting with the model, one for the process and one for the [team](https://thelittleprincess.github.io/team.html)
- Applied an interactive element to the  [dashboard](https://thelittleprincess.github.io/index.html)

Segment 4
- We have additional ML updates - narrow it down to the RandomForest.
- Used M2cgen to translate the model to JS
- Incorporated the prediction capabilities into the [presentation](https://docs.google.com/presentation/d/1ff6geuibB3INIdmVZ1MCOf6o9UUcdfSww27aJYee5uw/edit?ts=60a28a65#slide=id.gddfcfba4d3_0_13)
- Completed the dashboard so it is able to predict based on the data entered wheather is a low, medium or high trash predictor

## Summary
After completing our ETL process with reliable and concise data, we have consolidated the information gathered into a table that contains data by zipcode. This included the trash output along with income and population data. We were then able to upload that information into our database and train our model. We applied PCA to the model to reduce dimensionality and explored both the k-nearest-neighbors and random forest methods to compare model performance and choose an optimal model. 
After exploring multiple models we chose random forest, we then used m2cgen to translate to javascript to be able to connect it to our dashboard to give a prediction based on some inputs. 
