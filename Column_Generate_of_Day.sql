use sales
-- Add the time_of_day column
SELECT
	Time,
	(CASE
		WHEN `time` BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
        WHEN `time` BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
        ELSE "Evening"
    END) AS time_of_day
FROM salesdata;

ALTER TABLE salesdata ADD COLUMN time_of_day VARCHAR(20);

UPDATE salesdata
SET time_of_day = (
	CASE
		WHEN `time` BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
        WHEN `time` BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
        ELSE "Evening"
    END);

-- Add day_name column
SELECT
	date,
	DAYNAME(date)
FROM salesdata;

ALTER TABLE salesdata ADD COLUMN day_name VARCHAR(10);
select day_name from salesdata

UPDATE salesdata
SET day_name = DAYNAME(Date);

##Step 1: Create a Backup Column
ALTER TABLE salesdata
ADD COLUMN `Date_backup` VARCHAR(10)

##Step 2: Update the Date Format
UPDATE salesdata
SET Date = STR_TO_DATE(`Date`, '%d-%m-%Y');

SELECT*FROM salesdata LIMIT 10;
ALTER TABLE salesdata
DROP COLUMN Date_backup;

SELECT
	date,
	MONTHNAME(date)
FROM salesdata;

ALTER TABLE salesdata ADD COLUMN month_name VARCHAR(10);

UPDATE salesdata
SET month_name = MONTHNAME(date);

select * from salesdata


