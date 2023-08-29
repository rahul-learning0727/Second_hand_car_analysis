use cars;
-- READ DATA--
select * from car_dekho;

-- TOTAL CARS- TO GET COUNT OF TOTAL RECORDS --
SELECT count(*) FROM car_dekho;
-- or --
SELECT count(Name) FROM car_dekho;

-- How many cars will be available in 2023? --
select count(*) from car_dekho where year = 2023;

-- How many cars available in 2020, 2021, 2022? --
select count(*) from car_dekho where year in (2020,2021,2022);
-- or--
select year, count(*) from car_dekho where year in (2020,2021,2022)
group by year
order by year;

-- Print the total of all cars by year. Without any other details--
select year, count(*) from car_dekho
group by year
order by year;

-- How many diesel cars were there in year 2020? --
select year,count(*) from car_dekho
where fuel = "Diesel" and year = 2020;

-- -- How many petrol/diesel cars were there in year 2020? --
select year,count(*) from car_dekho
where fuel in ("Petrol","Diesel"  and year = 2020); ## wrong count coming
-- or --
select year,count(*) from car_dekho
where fuel = "Petrol" and year = 2020;

-- Print all the fuel cars (petrol, diesel, CNG) come by all year --
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;  # find another way to combine all 3 in one

-- select year, count(*) from car_dekho where fuel in ("Petrol" as Petrol, "Diesel" as Diesel) group by year;

-- Which year had more than 100 cars? --
select year, count(*) as No_of_cars from car_dekho
group by year
having No_of_cars > 100
order by No_of_cars desc limit 5;

-- All cars count details between 2015 and 2023 - want complete list --
select year, count(*) from car_dekho 
where year between 2015 and 2023
group by year;

-- All cars details between 2015 and 2023 - want complete list --
select * from car_dekho 
where year between 2015 and 2023;