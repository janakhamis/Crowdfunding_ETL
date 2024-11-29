# Crowdfunding_ETL

This project showcases the ETL (Extract, Transform, and Load) method for organizing and analyzing data from crowdfunding and contact dataset. The primary goal is to clean, convert, and store data for future analysis, all while building a PostgreSQL database with suitable dataset associations (project 2).

## Getting Started
1. Install Python on your computer
```
https://www.python.org/downloads/
```
2. Create a new environment
```
conda create -n dev python=3.10 anaconda -y
```
3. Activate the environment
```
conda activate dev
```
4. Install all the required dependencies.
```
pip install -r requirements.txt
```
5. Clone this repository to your local computer using `git clone`.

## Create the Category and Subcategory DataFrames:
- Category DataFrame:
  1. Extracted and transformed the category column from the crowdfunding.xlsx.
  2. Created a category_id column with sequential entries (such as 'cat1' to 'catn').
  3. Exported the DataFrame to category.csv.

- Subcategory DataFrame:
  1. Extracted and transformed the subcategory column from the crowdfunding.xlsx.
  2. Created a subcategory_id column with sequential entries (such as 'subcat1' to 'subcatn').
  3. Exported the DataFrame to subcategory.csv.

## Create the Campaign DataFrame:
1. Renamed and converted the datatypes of some columns.
2. Merged the campaign DataFrame with category and subcategory DataFrames.
3. Dropped the unwanted columns.
4. Exported the clean campaign DataFrame into campaign.csv.

## Create the Contacts DataFrame (Option 2):
1. Imported contacts.xlsx into a DataFrame.
2. Used regular expressions to extract the contact_id, name, and email.
3. Split the name column into first and last name.
4. Exported the clean contacts DataFrame into contacts.csv.

## Create the Crowdfunding Database:
1. Designed ERD of the four csv files using QuickDBD.
2. Created a Postgres Database named crowdfunding_db.
3. Created a schema named crowdfunding_db_schema.sql that contains the tables created with the data types, primary key, and foreign key.
4. Imported the csv files into the respective tables.
5. Verified the data by running Select * on all the tables.

## Datasets:
- crowdfunding.xlsx
- contacts.xlsx

## Outputs:
- category.csv
- subcategory.csv
- campaign.csv
- contacts.csv
- ERD Relationship.png
- crowdfunding_db_schema.sql

## How to Run it 
1. Open the cloned file in the Visual Studio Code:
   1. Go to file > Open Folder and navigate to the folder where you cloned the repository.
   2. Select the folder to open in VS code.
2. Run the Jupyter Notebook:
     1. Open the notebook file (ETL_Mini_Project_JKhamis_PSchaefer_JLau.ipynb) in VS code or Jupyter.
     2. Run the cells to perform the Analysis.
3. Open pgAdmin:
    1. Create a database crowdfunding_db.
    2. Run the crowdfunding_db_schema.sql in the database created above.
    3. Import the respective csv files into the tables.
  
## Group Members:
- Jana Khamis
- Paul Schaefer
- King Yuet Lau (Janette)








  










