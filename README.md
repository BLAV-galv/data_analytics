# data_analytics

SQL, Excel, & Tableau for Galvanize data analytics

For the Galvanize Capstone Project, I have combined Boulder County property value data with nearly 70,000 distinct points with an index of breweries using a PostGIS nearest neighbor subquery.  The goal of this project was to explore a possible correlation between propery values and proximity to a brewery in Boulder County, CO

-Excel
.CSV data-sets were cleaned and organized for import to SQL

-SQL
First, I wrote SQL code to load the data sets into a PGAdmin Server using Postgres.  Code is at the following link:


Second I altered a couple tables to calculate geometry from longitude and latitude.  Finally, I performed a nearest neighbor subquery while sequentially joining 4 unique data sets.  The code also generated a new column for the distance from each distinct address to its nearest brewery in meters.  Find the SQL code at this link.

-Tableau
Several worksheets were created using the data including an analysis of residential propery value distribution by city, number of properties served per brewery, a 2-axis analysis of property value vs distance to nearest brewery, and a geographical representation of Boulder county with a color gradient identifying proximity to brewery by zip code with tooltips.
Find the completed Tablea dashboard here:
