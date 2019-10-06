-- NOTE: Before running this script you need to update have products.csv and 
-- purchases.txt on your machine AND you need to point the script to their 
-- locations by filling in [your filepath] at the end of this script!

BBEGIN;

CREATE SCHEMA IF NOT EXISTS da_brewery;

CREATE TABLE IF NOT EXISTS da_brewery.address_points (
        strap VARCHAR(50),
        LATITUDE DECIMAL(9,6),
        LONGITUDE DECIMAL(9,6),
        STREET_NUMBER VARCHAR(50),
        STREETNAME VARCHAR(50),
        STREETTYPE VARCHAR(50),
        CITY VARCHAR(50),
        ZIPCODE INTEGER
        );

CREATE TABLE IF NOT EXISTS da_brewery.values (
        strap VARCHAR(50),
        bldAcutalVal INTEGER
        );

CREATE TABLE IF NOT EXISTS da_brewery.brewery_names (
        id INTEGER PRIMARY KEY,
        name_TRIM VARCHAR(100),
        address1 VARCHAR(50),
        address2 VARCHAR(50),
        city VARCHAR(50),
        state VARCHAR(50),
        code VARCHAR(50)
        );     

CREATE TABLE IF NOT EXISTS da_brewery.brewery_points (
        id INTEGER PRIMARY KEY,
        brewery_id INTEGER,
        latitude FLOAT,
        longitude FLOAT,
        accuracy VARCHAR(50)
        );                     

DELETE FROM da_brewery.address_points;
DELETE FROM da_brewery.values;
DELETE FROM da_brewery.brewery_names;
DELETE FROM da_brewery.brewery_points;

COPY da_brewery.address_points
FROM '/Users/brianlavash/Documents/Galvanize/Final Project/BoCo Housing Data/Address_Points.csv'
WITH DELIMITER ',' CSV Header NULL AS 'Not Available';

COPY da_brewery.values
FROM '/Users/brianlavash/Documents/Galvanize/Final Project/BoCo Housing Data/Values.csv'
WITH DELIMITER ',' CSV Header NULL AS 'Not Available';

COPY da_brewery.brewery_names
FROM '/Users/brianlavash/Documents/Galvanize/Final Project/Brewery info/brewery_names.csv'
WITH DELIMITER ',' CSV Header NULL AS 'Not Available';

COPY da_brewery.brewery_points
FROM '/Users/brianlavash/Documents/Galvanize/Final Project/Brewery info/brewery_points.csv'
WITH DELIMITER ',' CSV Header NULL AS 'Not Available';

COMMIT;