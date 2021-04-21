--SELECT specific columns and insert into new table
SELECT index, cases, location, date, summary, 
fatalities, injured, total_victims, age_of_shooter, 
weapons_obtained_legally, latitude, longitude, year 
INTO mass_shootings
FROM gun_violence;

--View updated table
SELECT * FROM mass_shootings;

-- View distinct count of table 
SELECT DISTINCT COUNT(*) FROM mass_shootings; 

--only view number of deaths which exceed 3 and total victims exceed 4
SELECT * FROM mass_shootings 
WHERE fatalities > 3
AND total_victims > 4; 

--update new table with WHERE condition
SELECT *
INTO new_data_frame
FROM mass_shootings
WHERE fatalities > 3 
AND total_victims > 4;

-- View new table and count of columns
SELECT COUNT(*) FROM new_data_frame;

--View Count of weapons_obtained_legally column 
SELECT COUNT(DISTINCT weapons_obtained_legally) as weapons
FROM new_data_frame;


SELECT * FROM new_data_frame;










