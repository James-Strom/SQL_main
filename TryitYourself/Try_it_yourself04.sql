-- James Stromnes
-- Tryityourself Chapter 04
-- 1.
COPY actors
FROM 'C:\Computer Files\Code College\SQL\My Queries\TryitYourself\movies.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');

-- 2.
COPY (
    SELECT geo_name, state_us_abbreviation, housing_unit_count_100_percent
    FROM us_counties_2010 ORDER BY housing_unit_count_100_percent DESC LIMIT 20
     )
TO 'C:\Computer Files\Code College\SQL\My Queries\TryitYourself\us_counties_housing_export_chap04.txt'
WITH (FORMAT CSV, HEADER);

-- 3.
	-- 17519.668
	-- 20084.461
	-- 18976.335
-- Will a column in your target table with data type numeric(3,8) work for these values? 
-- Why or why not?

-- No, the numeric(3,8)is incorrect, should be numberic(8,3). as it is the length is less than the
-- number of decimal points and it won't work
