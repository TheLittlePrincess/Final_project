# Final_project
Data Visualization Bootcamp Final Project

## Project Overview
The purpose of this project is to obtain an understanding of the relationship between waste production and household income in Austin, TX. With Austin being a diverse city  growing on both ends of the rich-poor spectrum, our team wanted to determine if there is a correlation between higher income households and higher waste production in comparison to lower income homes.

## Communication Protocols 
Our team is using collaboration tools such as Slack, Zoom, email, and Google docs. These tools enable us to communicate and develop our ideas through the forums that are accessible to us. We are facilitating this process by creating a Slack group message, which is our main forum of communication alongside Zoom calls. We shared our contact information, our availability, topics and datasets, codes, and any points and notes that could be potentially missed by a team member. We set a consistent time for Zoom meetings that everyone can attend in order for team members to not miss any information, if at times a member has to leave we communicate on slack to ensure everyone is up to date. Email and Google docs are being used in order to have documentation of the work assigned during our calls and messages as well as progress being made. 

## Resources
The reliable resources being used:
Garbage and waste routes for City of Austin 
 Waste collection and diversion daily report 
 Zip code boundaries for Austin
 Household income by zip code 

## Tools
Excel
Jupyter Notebook
PgAdmin4
AWS 
Tableau


Process

Created a schema based on the data first gathered
Created a Database  in AWS
Created the tables in pgAdmin based on the QuickDBD sql export
Consolidated the zip code and income data into a single file
Cleaned the waste collection data and filtered to only utilize the 2017 data
We filtered and merged the garbage and waste route data into the Routes_2017_weight data - now we had the waste weight per route
We sampled pairs of zip codes and routes (Preliminary_zip_route_weight)  in order to append household income data to have a preliminary dataset to run our machine learning model
Used the extracted sample data to create a linear regression model in order to complete a predictive analysis and to show the relationship between the variables of income and waste output. 

Summary
After completing segment one of our analysis, we were able to complete our ETL process with reliable and concise data. We were able to execute a sample linear regression using our data and machine model we created which facilitates the process moving forward to segment two of our analysis. 
We are not ready to analyze the full dataset yet, in the upcoming weeks we will need to correlate the zip code data to the route data, each of which has different geojson multipolygon coordinates to iterate through our model, as well as connecting it to the database.
 
