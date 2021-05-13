
--View dataframe
SELECT * FROM mass_shootings;

--Split location and insert into new table named locs
SELECT 
split_part(location, ',', 1) city,
split_part(location, ',', 2) state,
index
INTO locs
FROM mass_shootings
;

-- view new table locs
SELECT * FROM locs;

-- Join locs and new_data_frame table
SELECT *
INTO updated_table
FROM locs
INNER JOIN mass_shootings USING (index);

SELECT * FROM updated_table;

-- view table
SELECT * FROM updated_table 

-- Drop location column
ALTER TABLE updated_table 
DROP location;

-- view table
SELECT * FROM updated_table;

-- Replace - with Unknown in order for export to work correctly
UPDATE updated_table
SET age_of_shooter = REPLACE(age_of_shooter, '-','Unknown');

-- Replace - with Unknown in the next column 
UPDATE updated_table
SET weapons_obtained_legally = REPLACE(weapons_obtained_legally, '-','Unknown');


-- view table to see if updates worked correctly 
SELECT * FROM updated_table;

-- Separate summary column
SELECT summary 
INTO case_summary
FROM updated_table;

SELECT * FROM case_summary;



-- Drop summary column from updated_table 
ALTER TABLE updated_table 
DROP summary;

SELECT * FROM updated_table;


UPDATE updated_table
SET weapons_obtained_legally = 'Yes'
WHERE index = 28;

SELECT * FROM updated_table;


UPDATE updated_table
SET weapons_obtained_legally = REPLACE(weapons_obtained_legally, ' ','Unknown');

SELECT * FROM updated_table;


















