# Mass_Shootings_In_America

 ## Summary

Gun Violence has been a prominent issue within the United States for a significant amount of time. Year after year, the amount of lives lost due to gun violence has continued to increase affecting adults as well as the youth of the United States. I decided it would be helpful to find a way to visualize the sheer amount of incidents that have occurred via Gun Violence by using languages such as: Python, Tableau, and SQL. 

## Data Set 

The dataset that I will use for this project comes from Mother Jones and displays every incident of US Mass Shootings stemming from 1982 to 2021. Mother Jones is a nonprofit journalist organization dedicated to releasing free knowledge for the public to combat large corporations. Attached below is the link to where you can download the dataset. 

https://www.motherjones.com/politics/2012/12/mass-shootings-mother-jones-full-data/. 

## Connecting CSV to SQL 

The first step in the data exploration process is to find a method to connect the downloaded CSV to PostgreSQL. One method which makes it easy to do so is using Python along with the Pandas library. After loading in the dataframe, I can import sqlalchemy which allows for a direct connection from my csv to the database within PostgreSQL. 

![Screen Shot 2021-04-14 at 2 46 03 PM](https://user-images.githubusercontent.com/62044354/114784483-246c4b00-9d30-11eb-8ac8-0cf40737951c.png)

## Running PostgreSQL commands

After loading in the csv to PostgreSQL. I decided to do some exploratory data analysis to see how messy the data was. The first step was to include only the necessary columns which were needed and insert them into a new table. I then went ahead and created a condition using WHERE and inserted the columns which fit the condition into a new table named new_data_frame. 

![Screen Shot 2021-04-21 at 2 04 47 PM](https://user-images.githubusercontent.com/62044354/115622339-91419100-a2ac-11eb-9922-2f1dc7f5682c.png)

## Running PostgreSQL commands (Part 2) 

After running a few queries to generate some tables. I realized that one of the columns had values which needed to be separted. I proceeded to use PostgreSQL's command: split_part to separate the location data between cities and states. I then joined the new table with the split columns to the original table using an INNER JOIN. The next step is to export the final table to a csv and upload to Tableau. 

Link to split_part syntax: https://www.postgresqltutorial.com/postgresql-split_part/

<img width="438" alt="Screen Shot 2021-05-03 at 7 11 42 PM" src="https://user-images.githubusercontent.com/62044354/116944382-67d91b80-ac43-11eb-96e6-555a0100695c.png">


