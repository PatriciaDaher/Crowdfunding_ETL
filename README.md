# ETL Mini Project 2
 
## Overview
For the ETL mini project, we built an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform data.
Then, we created four CSV files and used the CSV file data to create an ERD and a table schema. Uploaded to  the CSV file data into a Postgres database.
 
## Repository Contents
The repository is organized as follows:

CrowdFunding_ETL
|_ ETL_Mini_Project_starter_SBeckles_PDaher.ipynb   #jupyter notebook code file
|_ Resources	                                           #Folder
|  |_ Excel
|  |  |_ crowdfunding.xlsx               #Excel data file
|  |  |_ contacts.xlxs       	              #Excel data file
|  |_ Csv
|  |  |_ category.csv                           # Category DataFrame
|  |  |_ subcategory.csv    	           # Sub Category DataFrame
|  |  |_ campaign.csv                	    # Campaign DataFrame 
|  |  |_ contacts.csv        	              #  Contacts DataFrame
|  |_ Screenshots of querries and crowdunding_db database    #screenshots of the four tables
|     |_ category.png
|     |_ subcategory.png
|     |_ camapaign.png
|     |_ contacts.png
|_ crowdfundingERDsketch.png           	       
|_ crowdfunding_db_schema.sql     # Crowdfunding Database schema for the 4 tables postgressql
|_ README.md


## Project Steps
Part 1  - Cleaning and Preparing the Tables via  Jupyter / Python/ Pandas
1-      Data Extraction:
        a.      Used Pandas to read extracted  data from the crowdfunding.xlsx and contacts.xlsx files
2-      Data Transformation:
        a.      Created Category and Subcategory DataFrames
                i.      Generated unique ID s for each
               ii.      Exported DataFrames as category.csv and subcategory.csv
        b.      Created a Campaign DataFrame:
                i.      Cleaned and changed columns:  goal, pledged, launch_date and end_date
               ii.      Added category_id and subcategory_id columns to corresponding Dataframes
              iii.      Exported the dataframe as campaign.csv
        c.      Created a Contacts DataFrame:
                i.      Extracted and cleaned Data
               ii.      Split the Name Column into First_Name and Last_Name
              iii.      Exported the DataFrame as contacts.csv
Part 2 –  Building the Database via Quick DBD / PostgresSQL / pgAdmin
Designing the Database
1-      ERD Diagram: Created an Entity Relationship Diagram (ERD) using QuickDBD to visualize the relationships between the four tables:
        a.      Category
        a.      Sub Category
        b.      Campaign
        c.      Contacts
2-      Table Schema on SQL : crowdfunding_db_schema.sql in the Postgres Database
        a.      Created 4  table schemas
        b.      Defined  primary keys, foreign keys and data types
3-      Data Loading
        a.      Created the Postgres database named crowdfunding_db
        b.      Imported the 4 csv files into their relative tables
                i.      category.csv                           
               ii.      subcategory.csv    	           
              iii.      campaign.csv                	    
               iv.      contacts.csv 	
        c.      Verified data integrity by running SELECT queries on each table   
        d.      Took four screenshots of tables
 

## Technologies Used
   1-  Python
   2-  Pandas
   3-  Jupyter Notebook
   4-  PostgreSQL
5-  QuickDBD (for ERD creation)
6-  SQL
 
 
## Results
Cleaned and organized data  presented clearly as a comprehensive database including 4 tables
An organized SQL Database  titled crowdfunding_db_schema.sql file  for the crowdfunding campaign including a database titled crowdfunding_db comprised of four interconnected tables  titled: Category , Sub Category , Campaign , Contacts
  
## Acknowledgements
Sade Beckles and Patricia Daher
 
## License
[Insert license information here if applicable]
---------------------------------------------------------------------------------
 
 
Requirements
The project was evaluated based on the following requirements:
Category DataFrame:
Contains category_id and category columns.
Exported as category.csv.
Subcategory DataFrame:
Contains subcategory_id and subcategory columns.
Exported as subcategory.csv.
Campaign DataFrame:
Contains columns such as cf_id, contact_id, company_name, description, goal, pledged, outcome, backers_count, country, currency, launch_date, end_date, category_id, and subcategory_id.
Exported as campaign.csv.
Contacts DataFrame:
Contains contact_id, first_name, last_name, and email columns.
Exported as contacts.csv.
Crowdfunding Database:
Created using the crowdfunding_db_schema.sql file.
Includes appropriate primary and foreign keys.
Data from each CSV file is successfully imported into the corresponding table.
 

