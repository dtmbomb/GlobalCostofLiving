-- Lets adjust the names of the Data I am interested in to be easier identified

alter table costofliving rename column x3 to McDonalds;
alter table costofliving rename column x8 to Resturant_Water;
alter table costofliving rename column x9 to Milk;
alter table costofliving rename column x10 to Bread;
alter table costofliving rename column x11 to Rice;
alter table costofliving rename column x12 to Eggs;
alter table costofliving rename column x14 to Chicken;
alter table costofliving rename column x15 to Beef;
alter table costofliving rename column x16 to Apples;
alter table costofliving rename column x17 to Banana;
alter table costofliving rename column x18 to Oranges;
alter table costofliving rename column x19 to Tomato;
alter table costofliving rename column x20 to Potato;
alter table costofliving rename column x21 to Onion;
alter table costofliving rename column x22 to Lettuce;
alter table costofliving rename column x23 to Bottled_Water;
alter table costofliving rename column x28 to Ticket_Transportation;
alter table costofliving rename column x29 to Pass_Transportation;
alter table costofliving rename column x30 to Taxi_Min;
alter table costofliving rename column x31 to Taxi_1km;
alter table costofliving rename column x33 to Gasoline;
alter table costofliving rename column x36 to Utilities;
alter table costofliving rename column x37 to Prepaid_Cell;
alter table costofliving rename column x38 to Internet;
alter table costofliving rename column x39 to Gym;
alter table costofliving rename column x41 to Movie;
alter table costofliving rename column x44 to Jeans;
alter table costofliving rename column x46 to Nikes;
alter table costofliving rename column x48 to 1BR_APT_CityCenter;
alter table costofliving rename column x50 to 3BR_APT_CityCenter;
alter table costofliving rename column x52 to APT_PPSQFT;
alter table costofliving rename column x54 to Avg_Salary;
alter table costofliving rename column x55 to Mortgage_Interest_rate;

-- Limiting down to just the data I am intersted in

Select Mcdonalds, Resturant_water, Milk, Bread, Rice, Eggs, Chicken, Beef, Apples, Banana, Oranges, Tomato, Potato, Onion, Lettuce, Bottled_water, Ticket_Transportation, Pass_Transportation, Taxi_min, Taxi_1km, Gasoline, Utilities, Prepaid_Cell, Internet, Gym, Movie, Jeans, Nikes, 1BR_APT_CityCenter, 3BR_APT_CityCenter,APT_PPSQFT, AVG_Salary, Mortgage_interest_rate from Costofliving;


-- I left off the info about the location so I need to add that

Select city, country, Mcdonalds, Resturant_water, Milk, Bread, Rice, Eggs, Chicken, Beef, Apples, Banana, Oranges, Tomato, Potato, Onion, Lettuce, Bottled_water, Ticket_Transportation, Pass_Transportation, Taxi_min, Taxi_1km, Gasoline, Utilities, Prepaid_Cell, Internet, Gym, Movie, Jeans, Nikes, 1BR_APT_CityCenter, 3BR_APT_CityCenter,APT_PPSQFT, AVG_Salary, Mortgage_interest_rate
from Costofliving;
-- Trying to learn how to combine all country data
-- where country = 'japan'; 

Select country, avg(Mcdonalds)
from Costofliving
group by country;

-- Want to organize by cost 

Select country, avg(Mcdonalds)
from Costofliving
group by country
order by 2 Desc;

-- trying to add another category

Select country, avg(Mcdonalds), avg(Resturant_water)
from Costofliving
group by country
order by 2 Desc;

-- I want to average all the categories im interested in now

Select country, avg(Mcdonalds), avg(Resturant_water), avg(Milk), avg(Bread), avg(Rice), avg(Eggs), avg(Chicken), avg(Beef), avg(Apples), avg(Banana), avg(Oranges), avg(Tomato), avg(Potato), avg(Onion), avg(Lettuce), avg(Bottled_water), avg(Ticket_Transportation), avg(Pass_Transportation), avg(Taxi_min), avg(Taxi_1km), avg(Gasoline), avg(Utilities), avg(Prepaid_Cell), avg(Internet), avg(Gym), avg(Movie), avg(Jeans), avg(Nikes), avg(1BR_APT_CityCenter), avg(3BR_APT_CityCenter), avg(APT_PPSQFT), avg(AVG_Salary), avg(Mortgage_interest_rate)
from Costofliving
group by country; 


-- I want to show only two decimal places just for my sanity

Select country, round(avg(Mcdonalds),2)
from costofliving
group by country;

-- Do I even care about this? I'm just going to throw it in Tableu anyway? I have to imagine there is a better way to do this. I could do it in excel pretty easy...
-- I learned something, im going to call it good on that and just try to make the visualization without that. If I need it later I can.


-- alphabatized by country
Select country, avg(Mcdonalds), avg(Resturant_water), avg(Milk), avg(Bread), avg(Rice), avg(Eggs), avg(Chicken), avg(Beef), avg(Apples), avg(Banana), avg(Oranges), avg(Tomato), avg(Potato), avg(Onion), avg(Lettuce), avg(Bottled_water), avg(Ticket_Transportation), avg(Pass_Transportation), avg(Taxi_min), avg(Taxi_1km), avg(Gasoline), avg(Utilities), avg(Prepaid_Cell), avg(Internet), avg(Gym), avg(Movie), avg(Jeans), avg(Nikes), avg(1BR_APT_CityCenter), avg(3BR_APT_CityCenter), avg(APT_PPSQFT), avg(AVG_Salary), avg(Mortgage_interest_rate)
from Costofliving
group by country
order by country; 

-- at this point I pulled it out to excel, averaged all the countries to a single number.

-- I noticed that Niger is extremely high cost of living. I would flag that to question how I should proceed. For now im including while noting it is a outlier.