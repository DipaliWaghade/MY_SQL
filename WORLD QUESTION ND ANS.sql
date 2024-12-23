use world;
#1 Retrieve all the information from the Country table.
select *
from country;

# 2 List the names of all countries in the Country table
select(name) as country_name
from country;

# 3 Get the name and population of all countries.
select name,population 
from country;

#4 Retrieve the names of all cities and their respective countries.


# 5 Show the names of all countries and their capital cities.
select name,capital
from country
where capital;


# 6 Find all countries with a population greater than 100 million
select population
from country
where population >100;

#7 Retrieve all cities in the City table that are in the country "India".
select city




