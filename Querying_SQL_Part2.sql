
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

-- remove rows which include "-" 
SELECT * FROM updated_table 

